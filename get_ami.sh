#!/bin/sh

#Seach ami-id per region (Centos7)

declare -a arr=("us-east-1" "us-east-2" "us-west-1" "us-west-2" "ca-central-1" "eu-central-1" "eu-west-1" "eu-west-2" "eu-west-3" "ap-northeast-1" "ap-northeast-2" "ap-northeast-3" "ap-southeast-1" "ap-southeast-2" "ap-south-1" "sa-east-1")
search_string="1804_2"

for i in "${arr[@]}"
do
  AMI=`aws --region $i ec2 describe-images --owners aws-marketplace --filters Name=product-code,Values=aw0evgkw8e5c1q413zgy5pjce | grep --before-context=15 $search_string | grep ImageId | cut -d':' -f2 | cut -d'"' -f2`
  echo "$i : $AMI"
done
