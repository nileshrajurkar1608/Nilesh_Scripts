#!/bin/bash

# AMI_ID="ami-00ff427d936335825"
SGID=sg-08700d26faab1a69d

aws ec2 describe-images  --filters "Name=name,Values=DevOps-LabImage-CentOS7"  | jq

COMPONENT=$1
AMI_ID=$(aws ec2 describe-images  --filters "Name=name,Values=DevOps-LabImage-CentOS7"  | jq '.Images[].ImageId' | sed -e 's/"//g')

echo "The AMI which we are using is $AMI_ID"

aws ec2 run-instances --image-id ${AMI_ID} --instance-type t3.micro  --security-group-ids ${SGID}  --tag-specifications "ResourceType=instance,Tags=[{Key=Name,Value=$COMPONENT}]" --instance-market-options "MarketType=spot, SpotOptions={SpotInstanceType=persistent,InstanceInterruptionBehavior=stop}"| jq '.Instances[].PrivateIpAddress' | sed -e 's/"//g'

EC2_Public_IP=$(aws ec2 describe-instances --filter "Name=tag-value,Values=$COMPONENT" | jq '.Reservations[].Instances[].NetworkInterfaces[].PrivateIpAddresses[].Association.PublicIp' | sed -e 's/"//g')

echo -e "Public IP address of $COMPONENT is $EC2_Public_IP"

#aws ec2 run-instances --image-id ${AMI_ID} --instance-type t3.micro  --security-group-ids ${SGID}  --tag-specifications "ResourceType=instance,Tags=[{Key=Name,Value=${COMPONENT}}]" --instance-market-options "MarketType=spot, SpotOptions={SpotInstanceType=persistent,InstanceInterruptionBehavior=stop}"