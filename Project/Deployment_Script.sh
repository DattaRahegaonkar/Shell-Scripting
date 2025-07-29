#!/bin/bash

# Writing the script to deploy the django-notes-app

cloning_app() {

	repo_name=django-notes-app

	if [[ -d $repo_name ]];
	then
		echo "App Directory already exit"
		cd $repo_name
		git checkout dev
		echo "Entering into the directory"
	else
		echo "Cloning the App"
		git clone https://github.com/DattaRahegaonkar/django-notes-app.git
		echo "Entering into the directory"
		cd $repo_name
		git checkout dev
	fi
}

installing_requirments() {

	sudo apt-get update
	sudo apt-get install nginx -y

}

enabling_packages() {

	sudo systemctl enable nginx
}

deploying_app() {

	docker build -t notes-app .
	docker run -d -p 8000:8000 notes-app:latest
}



cloning_app

# installing_requirments

enabling_packages

deploying_app



