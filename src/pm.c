#include <stdio.h>
#include <string.h>


#include "conf.h"
#include "pm.h"

static FILE *pm_backing_store;
static FILE *pm_log;
static char pm_memory[PHYSICAL_MEMORY_SIZE];
static unsigned int download_count = 0;
static unsigned int backup_count = 0;
static unsigned int read_count = 0;
static unsigned int write_count = 0;

// Initialise la mémoire physique
void pm_init (FILE *backing_store, FILE *log)
{
  pm_backing_store = backing_store;
  pm_log = log;
  memset (pm_memory, '\0', sizeof (pm_memory));
}

// Charge la page demandée du backing store
void pm_download_page (unsigned int page_number, unsigned int frame_number)
{

    /*
     * Here we use memset to clear the memory location.
     * Merci à https://www.tutorialspoint.com/c_standard_library/c_function_fread.htm
     */

    char buffer[PAGE_FRAME_SIZE + 1];
    memset(buffer, '\0', sizeof(buffer));

    /* We have to use fseek and fread. */

    if (fseek(pm_backing_store, page_number * PAGE_FRAME_SIZE, SEEK_SET) != 0) {
        perror("Failed to set the file position of the stream to the given offset");
        return;
    }

    /* Here if fseek is successful we can read. */
    if (fread(buffer, PAGE_FRAME_SIZE, 1, pm_backing_store) != 1){
        perror("Failed to read data from the given stream into the array pointed to.");
        return;
    }

    /* Copies the buffer string to the pm_memory */
    strncpy(&pm_memory[PAGE_FRAME_SIZE * frame_number], buffer, PAGE_FRAME_SIZE);

    download_count++;
    /* ¡ TODO: COMPLÉTER ! */
}

// Sauvegarde la frame spécifiée dans la page du backing store
void pm_backup_page (unsigned int frame_number, unsigned int page_number)
{

    char buffer[PAGE_FRAME_SIZE + 1];
    memset(buffer, '\0', sizeof(buffer));
    /*
     * Cette fonction fait "exactement" ce que pm_download_page fait
     * mais à l'inverse. (Sauf pour le fread :o)
     */

    /* We have to use fseek. */

    if (fseek(pm_backing_store, page_number * PAGE_FRAME_SIZE, SEEK_SET) != 0) {
        perror("Failed to set the file position of the stream to the given offset");
        return;
    }

    strncpy(buffer, &pm_memory[PAGE_FRAME_SIZE * frame_number], PAGE_FRAME_SIZE);

    /* On écrit buffer dans pm_backing_store */
    fputs(buffer, pm_backing_store);

    backup_count++;
  /* ¡ TODO: COMPLÉTER ! */
}

char pm_read (unsigned int physical_address)
{
    read_count++;
    /* Mettre le read_count dans le else ? ou le laisser ici vue que c'est une
     * "tentative". */

    /* Physical memory read -> read the address from the physical memory bloc. */

    if (physical_address > PHYSICAL_MEMORY_SIZE || physical_address < 0) {
        perror("Error -- Trying to access a physical address greater than "
                       "the PHYSICAL_MEMORY_SIZE or < 0.");
        return '!';
    } else {
        return pm_memory[physical_address];
    }

    /* ¡ TODO: COMPLÉTER ! */
}

void pm_write (unsigned int physical_address, char c)
{
    write_count++;
    /* Mettre le write_count dans le else ? ou le laisser ici vue que c'est une
     * "tentative". */

    if (physical_address > PHYSICAL_MEMORY_SIZE || physical_address < 0) {
        perror("Error -- Trying to write to a physical address greater than "
                       "the PHYSICAL_MEMORY_SIZE or < 0.");
        return;
    } else {
        pm_memory[physical_address] = c;
    }

    /* ¡ TODO: COMPLÉTER ! */
}


void pm_clean (void)
{
  // Enregistre l'état de la mémoire physique.
  if (pm_log)
    {
      for (unsigned int i = 0; i < PHYSICAL_MEMORY_SIZE; i++)
	{
	  if (i % 80 == 0)
	    fprintf (pm_log, "%c\n", pm_memory[i]);
	  else
	    fprintf (pm_log, "%c", pm_memory[i]);
	}
    }
  fprintf (stdout, "Page downloads: %2u\n", download_count);
  fprintf (stdout, "Page backups  : %2u\n", backup_count);
  fprintf (stdout, "PM reads : %4u\n", read_count);
  fprintf (stdout, "PM writes: %4u\n", write_count);
}
