#!/bin/bash
set -e

terraform -chdir=bootstrap apply -var-file=terraform.tfvars -auto-approve 