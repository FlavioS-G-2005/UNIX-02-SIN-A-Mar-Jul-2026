#!/bin/bash
# within the directory, and then list the contents of the directory
mkdir mydirectory
touch mydirectory/myfile
set -x
ls -l mydirectory
set +x
