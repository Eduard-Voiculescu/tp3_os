#ifndef VMM_H
#define VMM_H

#include <stdbool.h>
#include <stdint.h>
#include <stdlib.h>

#include "conf.h"

void vmm_init (FILE *log);
char vmm_read (unsigned int logical_address);
void vmm_write (unsigned int logical_address, char);
void vmm_clean (void);

/* Here we want to retrieve the frame and paddress */
int getFrame (int page, bool);
int getPAddress(int page, int frame, int index);

#endif
