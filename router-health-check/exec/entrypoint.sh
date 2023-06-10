#!/bin/sh

touch /var/log/ansible.log

service cron start

tail -f /var/log/ansible.log
