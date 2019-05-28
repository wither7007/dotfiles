#!/bin/bash - 
#===============================================================================
#
#          FILE: kkk.sh
# 
#         USAGE: ./kkk.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: YOUR NAME (), 
#  ORGANIZATION: 
#       CREATED: 05/25/2019 18:56
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error
for filename in ~/dotfiles/scripts/*.*; do
    [ -e "$filename" ] || continue
		echo $filename
    # ... rest of the loop body
done

