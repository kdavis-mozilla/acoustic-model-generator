#!/bin/bash

LANG=$(basename `pwd`)

pocketsphinx_mdef_convert -text ${LANG}/mdef ${LANG}/mdef.txt
