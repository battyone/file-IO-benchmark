#!/bin/bash

#######################
## Safety mechanisms ##
#######################
## Fail if any command fails (use "|| true" if a command is ok to fail)
set -e
## Fail if any pipeline command fails
set -o pipefail
## Fail if a glob does not expand
shopt -s failglob


find . -name "*bin" -type f -exec rm {} \; -exec printf "." \;;
printf "\n";
find . -name "test-files.txt" -exec rm {} \;;


exit `:`;

