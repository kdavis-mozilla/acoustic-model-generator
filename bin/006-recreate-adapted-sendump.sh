#!/bin/bash

LANG=$(basename `pwd`)

mk_s2sendump -pocketsphinx yes -moddeffn ${LANG}-adapt/mdef.txt -mixwfn ${LANG}-adapt/mixture_weights -sendumpfn ${LANG}-adapt/sendump
