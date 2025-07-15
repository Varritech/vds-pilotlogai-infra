#!/bin/bash
set -e
 
DIR=${1:-environments/dev}
terraform -chdir=$DIR apply -var-file=terraform.tfvars -auto-approve 