# Istjenesten Ares Database

Set up of pooled PostgreSQL+PostGIS database using Vagrant/Ares and Ansible.

#### To provision machines, from vagrant folder run:

$ _vagrant up istdbmaster_\
$ _vagrant up istdbslave_

Currently works with replication between master and slave, still to do watchdog/automatic failover.

#### Server configuration:
Primary: 			10.168.33.10		 \
Secondary: 		10.168.33.20     \
Virtual IP:  	10.168.33.99 
