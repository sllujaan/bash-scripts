#!/bin/bash

# this script checks whether the given package is installed or not

PACKAGE=$1
OUTPUT=$(dpkg -s $PACKAGE 2>/dev/null)
ISERROR=$?


if [ $ISERROR -eq 0 ]
then
    echo "The package [$PACKAGE] is installed.";
else
    echo "The package [$PACKAGE] is not installed.";
    read -p "Do you Want To install $PACKAGE? (Y/N): " confirm
    if [[ $confirm == [Yy] || $confirm == [Yy][Ee][Ss] ]]
    then
        echo "Installing $confirm ...";
    fi
fi
