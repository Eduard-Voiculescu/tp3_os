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
    int frame = getFrame(page, false);
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

            /* ICI cest un page fault*/

        } else { // tlb miss mais page est dans le page table
            /* on doit vérifier si c'est readonly ou si c'est rw */
            if(pt_readonly_p(page) && write) { // 1 -> readonly, 0 -> rw

                // ici c'est veut rw
                tlb_add_entry(page, frameIndex, 0);
                pt_set_readonly(page, 0);

            } else {

                tlb_add_entry(page, frameIndex, 1);
                pt_set_readonly(page, 1);

            }

        }

    } else { // TLB hit

        tlb_add_entry(page, frameIndex, write);
        return frameIndex;

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
