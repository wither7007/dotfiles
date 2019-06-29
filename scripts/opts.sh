#!/bin/bash
while getopts ":a:" opt; do
    case $opt in
        a) echo "you passed the -a option with the $OPTARG argument" >&2 ;;
        :) echo "Option -$opt requires an argument" >&2 ; exit 1 ;;
        \?) echo "Invaled option: -$opt" >&2 ;;
    esac
done