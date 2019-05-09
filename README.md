# Istjenesten Ares Database

Set up of pooled PostgreSQL+PostGIS database using Vagrant/Ares and Ansible.

Server configuration:\
Primary: 			10.168.33.10		 \
Secondary: 		10.168.33.20     \
Virtual IP:  	10.168.33.99 

To provision machines, from vagrant folder run:

vagrant up istdbmaster
vagrant up istdbslave

Currently works with replication between master and slave, still to do watchdog/automatic failover.
