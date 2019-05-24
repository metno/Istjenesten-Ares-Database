#!/bin/bash
# By Fat Dragon, 05/25/2016
# Recovers a standby server.

if [ $# -ne 5 ]
then
    echo "failover falling_node oldprimary_node new_primary replication_password trigger_file"
    exit 1
fi

FALLING_NODE=$1         # %d
OLDPRIMARY_NODE=$2      # %P
NEW_PRIMARY=$3          # %H
REPL_PASS=$4
TRIGGER_FILE=$5

echo "failover.sh FALLING_NODE: ${FALLING_NODE}; OLDPRIMARY_NODE: ${OLDPRIMARY_NODE}; NEW_PRIMARY: ${NEW_PRIMARY}; at $(date)\n" >> /etc/postgresql/11/main/failover.log

if [ $FALLING_NODE = $OLDPRIMARY_NODE ]; then
    if [ $UID -eq 0 ]
    then
        sudo -u vagrant ssh -T vagrant@$NEW_PRIMARY ansible-playbook /home/vagrant/git/istjenesten-ares-database/ansible/promote.yml -e demote_host=$OLDPRIMARY_NODE -e force=true
    else
        ssh -T vagrant@$NEW_PRIMARY ansible-playbook /home/vagrant/git/istjenesten-ares-database/ansible/promote.yml -e demote_host=$OLDPRIMARY_NODE -e force=true
    fi
    exit 0;
fi;

exit 0;

