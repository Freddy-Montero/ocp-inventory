#!/bin/bash
# Abort on error
set -e

CLUSTER=$1

# Provision the Environment (cluster1, cluster2, etc, etc ...)
for APP_YAML in $(ls provision/apps/*.yml); do
  ansible-playbook -v -i hosts.$CLUSTER provision.yml \
  -e @$APP_YAML
done
