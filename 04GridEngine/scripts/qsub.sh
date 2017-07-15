#!/bin/sh

#$ -S /bin/sh
#$ -cwd
##$ -o /dev/null
##$ -e ./err.$JOB_ID
##$ -e /dev/null
#$ -l mem_free=20G
##$ -pe pe_slots 4
#$ -V
##$ -V PATH
##$ -V LD_LIBRARY_PATH
##$ -V PYTHONPATH

$*
