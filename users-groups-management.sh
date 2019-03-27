#!/bin/bash
# Abort on error
set -e

CLUSTER=$1

# Management tasks (add users, set user groups, reinforce quotas, etc, etc ...)
ansible-playbook -v -i hosts.$CLUSTER users-groups-management.yml
