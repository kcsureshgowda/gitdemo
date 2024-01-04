#!/bin/bash
######################
# Author: Suresh
# Date: 2nd JAn 2024
# Version: v1
# Purpose: Script for tracking aws resources
#
##############################
#
#list s3 buckets
aws s3 ls

#list ec2 instances
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceID'

#list lamda
aws lambda list-functions

#list IAM users
aws iam list-users
