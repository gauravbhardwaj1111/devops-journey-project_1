#!/bin/bash
#-------------This is  backup script---------------
source="/home/gaurav/Documents/workspace/projects/project_1"
target="/home/gaurav/Documents/workspace/projects/backups"
backup_filename="backup_$(date +%Y%m%d_%H%M%S).tar.gz"
tar  -czvf "${target}/${backup_filename}" "$source"
echo "Backup completed $target/$backup_filename"
