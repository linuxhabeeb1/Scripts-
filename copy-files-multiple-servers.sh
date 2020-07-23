#!/bin/bash
# This script to copy files in multiple servers
# This script will copy a file to all hosts listed in serverlist file
# Place file  to copy and fix paths below.
#
# Add serverlist in HOSTS variable /tmp/hosts/serverlist file with hostname or IPaddress you need.
#
# Edit file variable with location of file you want to scp
#
# Edit desst variable with directory path where you want file to be copied.
#
HOSTS=/tmp/hosts/serverlists
file=/tmp/file1/
dest=/tmp/
echo "Are you sure you want to copy $file to the  standard list of servers"
echo "This may take a while!!"
echo -n "Enter 'y' or 'n':"
read CHOICE
case "$CHOICE" in
        y|yes|Yes) while read line
do
        scp $file $line:$dest
done < $HOSTS
        continue ;;
     n|no|No) echo "Please try again"

esac

        continue ;;
     n|no|No) echo "Please try again"

esac
