#!/bin/bash -ex
wget https://aws-tc-largeobjects.s3-us-west-2.amazonaws.com/DEV-AWS-MO-GCNv2/FlaskApp.zip
unzip FlaskApp.zip
cd FlaskApp/
yum -y install python3-pip
pip3 install -r requirements.txt
yum -y install stress
export PHOTOS_BUCKET=$(SUB_PHOTOS_BUCKET)
export AWS_DEFAULT_REGION=us-west-2
export DYNAMO_MODE=on
FLASK_APP=application.py/usr/local/bin/flask run --host=0.0.0.0 --port=80