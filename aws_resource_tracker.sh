#!/bin/bash

################################
# Author: Pooja
# Date: 23rd oct 2024
#
# Version: v1
#
# This script will report the AWS report usage
# ##############################

set -x #debug mode
set -e #exit when error occurs
set -o pipefail 

#AWS EC2
#AWS S3
#AWS Lambda
#AWS IAM Users



# Adding log timestamp to differentiate between cron runs
echo "-------------------------------" > resourceTracker
echo "Script run on: $(date)" >> resourceTracker
echo "-------------------------------" >> resourceTracker

#List EC2 Instances
echo "List EC2 Instances" >> resourceTracker
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId' >> resourceTracker

#List S3 buckets
echo "List S3 buckets" >> resourceTracker
aws s3 ls >> resourceTracker

#List Lambda functions
echo "List Lambda" >> resourceTacker
aws lambda list-functions >> resourceTracker

#List IAM Users
echo "List IAM Users" >> resourceTracker
aws iam list-users >> resourceTracker

#log completion message
echo "Script executed at: $(date)" >> resourceTracker


