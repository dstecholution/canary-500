PROJECTID	:= MY-PROJECT-ID
APPPATH		:= ./app.yaml
REGION		:= us-east1

all:
	@echo "usage: make deploy PROJECTID='<gcp project id>'"

setproject:
	@gcloud config set project $(PROJECTID)

setregion:
	@gcloud config set compute/region $(REGION)

services:
	@gcloud services enable cloudbuild.googleapis.com

deploy: setproject setregion
	@gcloud app deploy $(APPPATH)
