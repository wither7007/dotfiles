#!/bin/bash - 
#===============================================================================
#
#          FILE: ssh.sh
# 
#         USAGE: ./ssh.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: YOUR NAME (), 
#  ORGANIZATION: 
#       CREATED: 06/17/2019 21:17
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error
ssh-keygen -t rsa -b 4096 -C "jimsteffes@outlook.com"


