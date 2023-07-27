#!/bin/bash

## setup Ansible
sudo apt-get update 2>&1
sudo apt install -y python3-pip 2>&1
sudo pip3 install --upgrade pip
sudo pip3 install ansible virtualenv yamllint boto3 pre-commit

## run Ansible playbook
cd ansible
ansible-playbook -i inventories/local/inventory personalize.yaml 2>&1 | tee ./ansible.log