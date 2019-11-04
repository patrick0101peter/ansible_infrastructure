---
ansible_port: 22 
ansible_host: 172.16.44.130
net_zone: lan
wildfly_bind_address: 172.16.44.130
wildfly_management_bind_address: 172.16.44.130
wildfly_enable_ssl: no
