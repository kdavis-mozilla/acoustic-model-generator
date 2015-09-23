#!/bin/bash

LANG=$(basename `pwd`)

cp -a ${LANG} ${LANG}-adapt

map_adapt -moddeffn ${LANG}/mdef.txt -ts2cbfn .ptm.  -meanfn ${LANG}/means -varfn ${LANG}/variances -mixwfn ${LANG}/mixture_weights -tmatfn ${LANG}/transition_matrices -accumdir .  -mapmeanfn ${LANG}-adapt/means -mapvarfn ${LANG}-adapt/variances -mapmixwfn ${LANG}-adapt/mixture_weights -maptmatfn ${LANG}-adapt/transition_matrices
