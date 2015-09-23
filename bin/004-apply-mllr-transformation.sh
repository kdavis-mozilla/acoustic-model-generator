#!/bin/bash

LANG=$(basename `pwd`)

mllr_solve -meanfn ${LANG}/means -varfn ${LANG}/variances -outmllrfn mllr_matrix -accumdir .
