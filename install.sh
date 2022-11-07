#!/bin/bash

echo "Installing dependencies"
bash ./install-ansible.sh

echo "Starting install ..."
bash ./run-playbook.sh