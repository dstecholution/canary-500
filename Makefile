PROJECTID   := MY-PROJECT-ID
#PATH       := app.yaml


all:
	echo "usage: make deploy PROJECTID='<gcp project id>'"

setproject:
	gcloud config set project $(PROJECTID) --set-as-default

services:
	gcloud services enable cloudbuild.googleapis.com

deploy: setproject
	gcloud app deploy $(PATH)
