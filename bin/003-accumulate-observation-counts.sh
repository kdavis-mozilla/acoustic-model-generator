#!/bin/bash

LANG=$(basename `pwd`)

read_feat_params()
{
  prefix="-"
  file="${LANG}/feat.params"
  while IFS=" " read -r key value; do
    case "${key}" in
      '#'*) ;;
      *)
        key=${key#$prefix}
        eval "${key}=\"${value}\""
    esac
  done < "$file"
}

read_feat_params

bw -hmmdir ${LANG} -moddeffn ${LANG}/mdef.txt -ts2cbfn .ptm. -feat ${feat} -svspec ${svspec} -cmn ${cmn} -agc ${agc} -dictfn cmudict-${LANG}.dict -ctlfn vaani.fileids -lsnfn vaani.transcription -accumdir .
