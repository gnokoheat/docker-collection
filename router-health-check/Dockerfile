FROM ubuntu:20.04

RUN apt-get update && apt-get install -y ansible openssh-client sshpass cron net-tools iputils-ping

COPY crontab.txt /etc/cron.d/crontab.txt
RUN crontab /etc/cron.d/crontab.txt

COPY exec exec
RUN chmod +x /exec/entrypoint.sh
RUN chmod +x /exec/ansible.sh
RUN chmod +x /exec/log-rotate.sh

ENTRYPOINT ["/exec/entrypoint.sh"]
