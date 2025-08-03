#!/bin/bash


<< readme

  creating backup script with rotation for floder

  usages : ./backup.sh <path of source folder> <path of backup folder>

readme


function display_usage {

	echo "./backup.sh <path of source folder> <path of backup folder>"

}

if [ $# -eq 0 ]; then
	 display_usage
fi

source_dir=$1
timestamp=$(date "+%Y-%m-%d-%H-%M-%S")
backup_dir=$2

function take_backup {

	zip -r "${backup_dir}/backup_${timestamp}.zip" "${source_dir}" > /dev/null
	if [ $? -eq 0 ]; then
		echo "Backup Created Successfully on ${timestamp}"
	fi
}


function with_rotation {

	backups=($(ls -t "${backup_dir}/backup_"*.zip 2>/dev/null )) 
	
	if [ "${#backups[@]}" -gt 5 ]; then
		
		backups_to_remove=("${backups[@]:5}")

		for backup in "${backups_to_remove[@]}";
		do
			rm -f ${backup}
		done
	fi

}


take_backup
with_rotation
