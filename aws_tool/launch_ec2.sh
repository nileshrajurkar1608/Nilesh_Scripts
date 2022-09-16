#!/bin/bash

# AMI_ID="ami-00ff427d936335825"
SGID=sg-08700d26faab1a69d

aws ec2 describe-images  --filters "Name=name,Values=DevOps-LabImage-CentOS7"  | jq

COMPONENT=$1
AMI_ID=$(aws ec2 describe-images  --filters "Name=name,Values=DevOps-LabImage-CentOS7"  | jq '.Images[].ImageId' | sed -e 's/"//g')

echo -e "\e[46;32m The AMI which we are using is $AMI_ID \e[0m"

create_server() {
    EC2_Private_IP=$(aws ec2 run-instances --image-id ${AMI_ID} --instance-type t3.micro  --security-group-ids ${SGID}  --tag-specifications "ResourceType=instance,Tags=[{Key=Name,Value=$COMPONENT}]" --instance-market-options "MarketType=spot, SpotOptions={SpotInstanceType=persistent,InstanceInterruptionBehavior=stop}"| jq '.Instances[].PrivateIpAddress' | sed -e 's/"//g')

    EC2_Public_IP=$(aws ec2 describe-instances --filter "Name=tag-value,Values=$COMPONENT" | jq '.Reservations[].Instances[].NetworkInterfaces[].PrivateIpAddresses[].Association.PublicIp' | sed -e 's/"//g')

    echo -e "\e[43;32m Private IP address of $COMPONENT is $EC2_Private_IP \e[0m"
    echo -e "\e[41;31m Public IP address of $COMPONENT is $EC2_Public_IP \e[0m"
}

create_server

#aws ec2 run-instances --image-id ${AMI_ID} --instance-type t3.micro  --security-group-ids ${SGID}  --tag-specifications "ResourceType=instance,Tags=[{Key=Name,Value=${COMPONENT}}]" --instance-market-options "MarketType=spot, SpotOptions={SpotInstanceType=persistent,InstanceInterruptionBehavior=stop}"