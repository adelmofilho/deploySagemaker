#!/bin/bash
if [[ $1 == r ]]
then
    aws cloudformation update-stack --stack-name deployr --template-body file://infra/template.yml --capabilities CAPABILITY_IAM --parameters file://infra/parameters-r.json
elif [[ $1 == py ]]
then
    aws cloudformation update-stack --stack-name deploypy --template-body file://infra/template.yml --capabilities CAPABILITY_IAM --parameters file://infra/parameters-py.json
else
   echo "informe se r ou py nos argumentos"
fi