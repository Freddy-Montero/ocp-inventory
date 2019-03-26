#!/bin/bash
# Abort on error
set -e

CLUSTER=$1

# Provision the Environment (cluster1, cluster2, etc, etc ...)
ansible-playbook -v -i hosts.$CLUSTER provision.yml \
  -e @provision/base/$CLUSTER.yml
