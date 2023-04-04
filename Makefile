PROJECTID   := MY-PROJECT-ID
#PATH       := app.yaml


all: deploy

setproject:
  gcloud config set project $(PROJECTID) --set-as-default

services:
  gcloud services enable cloudbuild.googleapis.com

deploy: setproject
  gcloud app deploy $(PATH)
