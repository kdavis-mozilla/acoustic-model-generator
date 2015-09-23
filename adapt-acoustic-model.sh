#!/bin/bash

bin/001-generate-acoustic-features.sh
bin/002-convert-mdef-to-text.sh
bin/003-accumulate-observation-counts.sh
bin/004-apply-mllr-transformation.sh
bin/005-update-acoustic-model-with-map.sh
bin/006-recreate-adapted-sendump.sh
