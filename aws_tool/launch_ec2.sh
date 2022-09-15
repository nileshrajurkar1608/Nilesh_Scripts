#!/bin/bash

# AMI_ID="ami-00ff427d936335825"

aws ec2 describe-images  --filters "Name=name,Values=DevOps-LabImage-CentOS7"  | jq