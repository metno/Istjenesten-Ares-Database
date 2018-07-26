# Name:          istjenesten_database_server_master_ansible_provision.sh
# Purpose:       Shell script to run Ansible provisioning on a Istjenesten database master server VM
# Author(s):     Nick Hughes
# Created:       2018-vii-25
# Modifications: 2017-vii-?  - 
# Copyright:     (c) Norwegian Meteorological Institute, 2018
# Citing:        https://doi.org/10.5281/zenodo.xxxxxx
#
# License:       This file is part of the BIFROST ice charting system.
#                BIFROST is free software: you can redistribute it and/or modify
#                it under the terms of the GNU General Public License as published by
#                the Free Software Foundation, version 3 of the License.
#                http://www.gnu.org/licenses/gpl-3.0.html
#                This program is distributed in the hope that it will be useful,
#                but WITHOUT ANY WARRANTY without even the implied warranty of
#                MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.

# Check Ansible is installed on Vagrant box, and if not, install it				
if [ ! -f /usr/bin/ansible-playbook ]
  then
  apt-get install software-properties-common
  apt-add-repository ppa:ansible/ansible
  apt-get update
  apt-get install -y ansible
fi

# Check Git is installed on Vagrant box, and if not, install it
if [ ! -f /usr/bin/git ]
  then
  apt-get install -y git
fi

# Get Bifrost git repository onto virtual machine
mkdir -p /home/vagrant/git/istjenesten-ares-database
git clone \
  https://Polarnix:gwEm*HJy*5sr@bitbucket.org/Polarnix/istjenesten-ares-database.git \
  /home/vagrant/git/istjenesten-ares-database

# Run Ansible playbook to install Bifrost
cd /home/vagrant/git/istjenesten-ares-database 
ansible-playbook --inventory="localhost," \
  -v \
  -e lubuntu_version="bionic" \
  -c local "/home/vagrant/git/istjenesten-ares-database/ansible/istjenesten-database-master-server.yml"
 