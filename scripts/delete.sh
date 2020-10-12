#!/bin/bash
if [[ $1 == r ]]
then
    aws cloudformation delete-stack --stack-name deployr
elif [[ $1 == py ]]
then
    aws cloudformation delete-stack --stack-name deploypy
else
   echo "informe se r ou py nos argumentos"
fi