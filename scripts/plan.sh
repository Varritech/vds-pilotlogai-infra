#!/bin/bash
set -e

DIR=${1:-environments/dev}
terraform -chdir=$DIR plan -var-file=terraform.tfvars 