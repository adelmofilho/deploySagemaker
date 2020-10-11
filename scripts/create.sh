#!/bin/bash
aws cloudformation create-stack --stack-name deploysagemaker --template-body file://infra/template.yml --capabilities CAPABILITY_IAM