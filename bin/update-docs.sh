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
    if [ `uname` = "Darwin" ] ; then
        export SED=gsed
    else
        export SED=sed
    fi

    # copy the documentation from samsara
    cp -r $1/docs/* $(dirname $0)/../docs/

    # update links to work with jekyll
    # the github markdown format for a link it is
    # slightly different thatn the jekyll markdown link format
    # in particular in github you have to follow this format:
    # [title](/actual/path/to/file.md) while the same link in jekyll is:
    # [title](/actual/path/to/file)  WITHOUT the .md
    # so we make this transformation here.
    find $(dirname $0)/../docs/ -name \*.md | xargs -I{} $SED -i -r 's/\.md\)/)/g' {}
fi
