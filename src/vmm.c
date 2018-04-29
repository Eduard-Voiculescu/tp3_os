#include <fcntl.h>
#include <stdio.h>
#include <sys/mman.h>
#include <sys/stat.h>
#include <unistd.h>

#include "conf.h"
#include "common.h"
#include "vmm.h"
#include "tlb.h"
#include "pt.h"
#include "pm.h"

static unsigned int read_count = 0;
static unsigned int write_count = 0;
static FILE* vmm_log;

void vmm_init (FILE *log)
{
  // Initialise le fichier de journal.
  vmm_log = log;
}


// NE PAS MODIFIER CETTE FONCTION
static void vmm_log_command (FILE *out, const char *command,
                             unsigned int laddress, /* Logical address. */
		                     unsigned int page,
                             unsigned int frame,
                             unsigned int offset,
                             unsigned int paddress, /* Physical address.  */
                             char c) /* Caractère lu ou écrit.  */
{
  if (out)
      fprintf (out, "%s[%c]@%05d: p=%d, o=%d, f=%d pa=%d\n", command, c, laddress,
	     page, offset, frame, paddress);
}

/* Effectue une lecture à l'adresse logique `laddress`.  */
char vmm_read (unsigned int laddress)
{
    char c = '!';
    read_count++;
    /* ¡ TODO: COMPLÉTER ! */

    /*
     * Ici nous allons chercher la page, le frame, le offset et le paddress.
     * Le page et le offset sont assez direct. Par contre pour le frame et
     * le paddress nous avons fait des fonctions.
     */
    int page = laddress / PAGE_FRAME_SIZE;
    int frame = getFrame(page, 1);
    int offset = laddress % PAGE_FRAME_SIZE;
    int paddress = getPAddress(page, frame, offset);

    // TODO: Fournir les arguments manquants.
    vmm_log_command (stdout, "READING", laddress, 0, 0, 0, 0, c);
    return c;
}

/* Effectue une écriture à l'adresse logique `laddress`.  */
void vmm_write (unsigned int laddress, char c)
{
    write_count++;
    /* ¡ TODO: COMPLÉTER ! */

    // TODO: Fournir les arguments manquants.
    vmm_log_command (stdout, "WRITING", laddress, 0, 0, 0, 0, c);
}

int getFrame (int page, bool write){

    int frameIndex = tlb_lookup(page, write);

    if(frameIndex == -1){ // TLB miss

        frameIndex = pt_lookup(page);
        if (frameIndex == -1) { // page fault -> aller dans le backing store

            /*
             * Ici c'est une page fault. Nous devons aller le prendre du
             * backing store, trouver un free frame, update la
             * table des pages et le tlb.
             * Les étapes sont les suivantes:
             *
             * - Trouver free frame
             * - Sinon, remplacer une présente
             * - Vérifier si c'est un readonly -> backing store
             * - sinon -> from the disk
             *
             */

             frameIndex = pm_free_frame();
             if(frameIndex == -1){ // pas trouvé de free frame



             } else { // free frame :)

                 pm_download_page(page, frameIndex);
                 pt_set_entry(page, frameIndex);
                 tlb_add_entry(page, frameIndex, 1);

             }


        } else { // TLB miss mais page est dans le page table

            /* on doit vérifier si c'est readonly ou si c'est rw */
            if(pt_readonly_p(page) && write) { // 1 -> readonly, 0 -> rw

                // ici c'est rw
                tlb_add_entry(page, frameIndex, 0);
                pt_set_readonly(page, 0);

            } else { // readonly

                tlb_add_entry(page, frameIndex, 1);
                pt_set_readonly(page, 1);

            }
        }

        return frameIndex;

    } else { // TLB hit
        // vérifier si c'est un rw/rdonly

        if(write && tlb__is_dirty(page)) {
            // ici c'est dirty, dont faut réécrire dans le backing_store
            frameIndex = pt_lookup(page);
            tlb_add_entry(page, frameIndex, 0);
            pt_set_readonly(page, 0);

        } else {
            return frameIndex;
        }
    }

}

int getPAddress(int page, int frame, int index){

}

// NE PAS MODIFIER CETTE FONCTION
void vmm_clean (void)
{
    fprintf (stdout, "VM reads : %4u\n", read_count);
    fprintf (stdout, "VM writes: %4u\n", write_count);
}
