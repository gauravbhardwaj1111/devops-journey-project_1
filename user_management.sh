#!/bin/bash

#---------Shell script for user management----------

create_user(){
echo "Enter username"
read username
sudo useradd $username
sudo passwd $username
echo  "User $username has been created"
}

delete_user(){
echo "Enter username yoou want to delete"
read username
sudo userdel -r $username
echo  "User $username has been deleted"
}

modify_user(){
echo "Enter username to modify"
read username
sudo usermod $username
echo  "User $username has been modified"
}

#Main script
echo "User management scrit"
echo "1: Add user"
echo "2:Delete user"
echo "3:Modify user"
echo "Enter your choice"
read  choice

case $choice in
1) create_user ;;
2) delete_user ;;
3) modify_user ;;
*) echo "Invalid choice";;
esac
