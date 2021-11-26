/*****************************************
	Ofir Krupik, Shay Yosipov
	Ofir ID: 212347827 , Shay ID: 324124593
*****************************************/

#include "structs.h"
#include "assembler.h"

#define MACHINE_RAM 2000

extern int ic, dc;
extern int err;
extern boolean was_error;
extern labelPtr symbols_table;
extern extPtr ext_list;
extern const char base32[32];
extern const char *commands[];
extern const char *directives[];
extern boolean entry_exists, extern_exists;
