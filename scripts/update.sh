#!/bin/bash
aws cloudformation update-stack --stack-name deploysagemaker --template-body file://infra/template.yml --capabilities CAPABILITY_IAM