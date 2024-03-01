#!/bin/bash

#---This is te main script where we can define what all task needs to be performed
echo "Main script"
echo "1:User management"
echo "2: Group Management"
echo "3: Backup"
echo "4:Permission"
echo "Enter your choice"
read choice
case $choice in
 1) ./user_management.sh;;
 2) ./group_management.sh;;
 3) ./backup.sh;;
 *)  echo "Invalid choice";;
 esac
