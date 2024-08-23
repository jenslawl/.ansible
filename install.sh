#!/bin/bash
if [ "$(uname)" == 'Darwin' ]; then
    echo "Mac OS X"
    brew update
    brew install ansible

elif [ "$(expr substr $(uname -s) 1 5)" == 'Linux' ]; then
    echo "Linux"
else
    echo "Your platform ($(uname -a)) is not supported."
    exit 1
fi

