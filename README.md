ansible-zabbix-agent

role name : ansible-zabbix-agent

playbook steps:

* Install zabbix-agent 3.2 setup.yml
* Configure zabbix-agent config.yml

Actions:

* Installing repository gpg
* Installing repository rpm
* Update zabbix-agent if it is necessary
* Ensure zabbix-agent started/stopped
* Setup zabbix_agentd.conf
* Restart servie zabbix-agent
