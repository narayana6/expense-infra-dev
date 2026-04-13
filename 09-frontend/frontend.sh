#!/bin/bash
component=frontend
environment=dev
dnf install ansible -y
pip3.9 install botocore boto3
ansible-pull -i localhost, -U https://github.com/narayana6/expense-ansible-roles-tf.git main.yaml -e component=$component -e env=$environment
