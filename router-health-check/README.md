# router-health-check

Router health check with Ansible playbook by docker-compose

## container output

1. health check ok
2. health check fail => router reboot start
3. health check fail => router rebooting
4. health check ok

```
[2023-06-10 14:22:01]

PLAY [Include all policy files] ************************************************

TASK [Include policy files] ****************************************************
included: /etc/ansible/policy/router_health_check.yml for localhost

TASK [Check DNS access to 8.8.8.8] *********************************************
ok: [localhost]

TASK [Check Uptime more than 5 min] ********************************************
skipping: [localhost]

TASK [Reboot Router1 if unable to access DNS] **********************************
skipping: [localhost]

PLAY RECAP *********************************************************************
localhost                  : ok=2    changed=0    unreachable=0    failed=0    skipped=2    rescued=0    ignored=0

[2023-06-10 14:23:01]

PLAY [Include all policy files] ************************************************

TASK [Include policy files] ****************************************************
included: /etc/ansible/policy/router_health_check.yml for localhost

TASK [Check DNS access to 8.8.8.8] *********************************************
fatal: [localhost]: FAILED! => {"changed": false, ...]}
...ignoring

TASK [Check Uptime more than 5 min] ********************************************
ok: [localhost -> X.X.X.X]

TASK [Reboot Router1 if unable to access DNS] **********************************
changed: [localhost -> X.X.X.X]

PLAY RECAP *********************************************************************
localhost                  : ok=4    changed=1    unreachable=0    failed=0    skipped=0    rescued=0    ignored=1

[2023-06-10 14:24:01]

PLAY [Include all policy files] ************************************************

TASK [Include policy files] ****************************************************
included: /etc/ansible/policy/router_health_check.yml for localhost

TASK [Check DNS access to 8.8.8.8] *********************************************
fatal: [localhost]: FAILED! => {"changed": false, ...]}
...ignoring

TASK [Check Uptime more than 5 min] ********************************************
fatal: [localhost -> X.X.X.X]: FAILED! => {"changed": false, ...}
...ignoring

TASK [Reboot Router1 if unable to access DNS] **********************************
skipping: [localhost]

PLAY RECAP *********************************************************************
localhost                  : ok=3    changed=0    unreachable=0    failed=0    skipped=1    rescued=0    ignored=2

[2023-06-10 14:25:01]

PLAY [Include all policy files] ************************************************

TASK [Include policy files] ****************************************************
included: /etc/ansible/policy/router_health_check.yml for localhost

TASK [Check DNS access to 8.8.8.8] *********************************************
ok: [localhost]

TASK [Check Uptime more than 5 min] ********************************************
skipping: [localhost]

TASK [Reboot Router1 if unable to access DNS] **********************************
skipping: [localhost]

PLAY RECAP *********************************************************************
localhost                  : ok=2    changed=0    unreachable=0    failed=0    skipped=2    rescued=0    ignored=0
```
