#!/bin/bash

sudo apt install -y software-properties-common
sudo apt-add-repository ppa:ansible/ansible -y
sudo apt update -y
sudo apt -y install ansible

# add some ansible playbook
ansible-galaxy install gantsign.oh-my-zsh