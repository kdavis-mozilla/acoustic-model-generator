#!/bin/bash

LANG=$(basename `pwd`)

sphinx_fe -argfile ${LANG}/feat.params -samprate 16000 -c vaani.fileids -di . -do . -ei wav -eo mfc -mswav yes
