#!/bin/sh

export ANSIBLE_LOCALHOST_WARNING="False"
export ANSIBLE_HOST_KEY_CHECKING="False"
echo "[$(date +%Y)-$(date +%m)-$(date +%d) $(date +%H):$(date +%M):$(date +%S)]" >> /var/log/ansible.log
ansible-playbook -i /etc/ansible/config/inventory.ini /etc/ansible/config/playbook.yml >> /var/log/ansible.log
