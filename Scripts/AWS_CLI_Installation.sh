#!/bin/bash

# Installing the AWS CLI

install_AWS_CLI() {

	# Download the AWS CLI v2 installer
	curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"

	# installing the unzip package
	sudo apt-get install unzip -y > /dev/null

	# unzip the file
	unzip awscliv2.zip

	# Run the install script
	sudo ./aws/install

	# aws version
	aws --version

	# clean up the zip and folder
	rm -rf awscliv2.zip ./aws

}

check_AWS_CLI() {
	
	if which aws > /dev/null ; then
	       echo "AWS CLI Aready Installed Successfully !"
	else
		echo "AWS CLI not found, please Install the AWS CLI"
		install_AWS_CLI
	fi

}



check_AWS_CLI
