#!/bin/bash

#
# Copies the documentation from the Samsara docs/ directory.
#

if [ "$1" = "" ] ; then
    echo 'Please specify where your samsara project is:'
    echo 'example:'
    echo "   $0 ../samsara"
    exit 1
else
    cp -r $1/docs/* $(dirname $0)/../docs/
fi
