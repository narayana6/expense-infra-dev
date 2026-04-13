#!/bin/bash
component=backend
environment=dev
dnf install ansible -y
pip3.9 install botocore boto3
sudo dnf install ansible git -y
ansible-pull -i localhost, -U https://github.com/narayana6/expense-ansible-roles-tf.git main.yaml -e component=$component -e env=$environment
