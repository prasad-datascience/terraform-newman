#!/bin/bash
AWS_REGION="ap-south-1"
CLUSTER_NAME="arn:aws:ecs:ap-south-1:294238557692:cluster/dummy"
Latest_task_revison=`aws ecs describe-task-definition --task-definition newman-task | egrep "revision" | tr "/" " " | awk '{print $2}' | sed 's/"$//' | cut -d "," -f 1`
echo $Latest_task_revison
aws ecs --region $AWS_REGION run-task --cluster $CLUSTER_NAME --task-definition newman-task:${Latest_task_revison} --launch-type EC2 --network-configuration "awsvpcConfiguration={subnets=["subnet-0029af37a3194e4fa","subnet-091ef102cb5e4ff51"],assignPublicIp="DISABLED"}"
