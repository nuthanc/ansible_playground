#! /bin/sh
ssh-keygen -R nodeg12
ssh-keygen -R nodeg31
ssh-keygen -R nodec58
ssh-keygen -R nodec60
ssh-keygen -R nodec61
ssh-keygen -R nodea4

ansible-playbook -i inventory playbooks/$1
