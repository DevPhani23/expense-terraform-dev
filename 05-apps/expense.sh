#!/bin/bash
# user data will get sudo access
dnf install ansible -y
cd /tmp
git clone https://github.com/DevPhani23/expense-ansible-roles.git
cd expense-ansible-roles
ansible-playbook main.yaml -e COMPONENT=backend -e login_password=ExpenseApp1
ansible-playbook main.yaml -e COMPONENT=frontend 