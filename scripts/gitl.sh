#!/bin/bash - 
#===============================================================================
#
#          FILE: f.sh
# 
#         USAGE: ./f.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: YOUR NAME (), 
#  ORGANIZATION: 
#       CREATED: 05/23/2019 17:43
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error
echo enter name:
read GHUSER
echo $GHUSER
curl -s "https://api.github.com/users/$GHUSER/repos?per_page=1000" | grep -w clone_url | grep -o '[^"]\+://.\+.git' | vi - 
