#!/bin/bash
#----------This is a group management script-------------
create_group(){
echo "Enter group name"
read  groupname
sudo groupadd "$groupname"
}

delete_group(){
echo "Enter the group you want to delete"
read groupname
sudo delgroup "$groupname"
}

add_user_to_group(){
echo "Enter username"
read username
echo "Enter group in which you want  ot add user to"
read groupname
sudo usermod "$groupname" "$username"
}

#Main script
echo  "Group management script"
echo "1: create a user"
echo "2:  delete a user"
echo "3: add user to a group"
echo "Ente your choice"
read  choice

case $choice in
1) create_group ;;
2) delete_group ;;
3) add  suer to group ;;
*) echo "You have entered incorrect choice" ;;
esac
