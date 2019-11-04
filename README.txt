## Inventory Structure
inventories
├── int
│   ├── group_vars
│   │   ├── randburg_webservers_int.yml
│   │   └── sandton_webservers_int.yml
│   ├── hosts
│   └── host_vars
│       ├── minion-01.lnx.com
│       └── minion-02.lnx.com
├── production
│   ├── group_vars
│   │   ├── dbservers.yml
│   │   ├── randburg_webservers.yml
│   │   ├── sandton_webservers.yml
│   │   └── webservers.yml
│   ├── hosts
│   └── host_vars
│       ├── minion-01.lnx.com
│       └── minion-02.lnx.com
├── sit
│   ├── group_vars
│   │   ├── randburg_webservers_sit.yml
│   │   └── sandton_webservers_sit.yml
│   ├── hosts
│   └── host_vars
│       ├── minion-01.example.com
│       └── minion-02.example.com
└── uat
    ├── group_vars
    │   ├── randburg_webservers_uat.yml
    │   └── sandton_webservers_uat.yml
    ├── hosts
    └── host_vars
        ├── minion-01.example.com
        └── minion-02.example.com

##Playbook Structure
playbooks
├── app1
│   ├── app1_int_users.yml
│   ├── app1_int.yml
│   ├── app1_prod_users.yml
│   ├── app1_prod.yml
│   ├── app1_sit_users.yml
│   ├── app1_sit.yml
│   ├── roles -> /home/patrick/Ansible/ansible_infrastructure/roles
│   ├── site_int.yml
│   ├── site_prod.yml
│   └── site_sit.yml
├── app2
│   ├── app2_int_users.yml
│   ├── app2_int.yml
│   ├── app2_prod_users.yml
│   ├── app2_prod.yml
│   ├── app2_sit_users.yml
│   ├── app2_sit.yml
│   ├── roles -> /home/patrick/Ansible/ansible_infrastructure/roles
│   ├── site_int.yml
│   ├── site_prod.yml
│   └── site_sit.yml
├── app3
│   └── roles -> /home/patrick/Ansible/ansible_infrastructure/roles
├── app4
│   └── roles -> /home/patrick/Ansible/ansible_infrastructure/roles

## Run playbooks based on applications and their environments
#Check the syntax
ansible-playbook -i inventories/int playbooks/app1/site_int.yml --syntax-check
#Dry run
ansible-playbook -i inventories/int playbooks/app1/site_int.yml --check
#Run the playbook
ansible-playbook -i inventories/int playbooks/app1/site_int.yml --check

