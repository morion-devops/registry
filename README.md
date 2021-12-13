# Docker Registry
A single instace of Docker Registry. 

A part of my [DevOps portfolio](https://github.com/morion-devops/)

## Provisioning via Vagrant

1. Go into vagrant-folder and run `vagrant up`
1. Go into ansible-folder and check, that `ansible/ansible.cfg` is uncomment for Vagrant
1. Run `ansible-playbook playbook.yaml`

## Provisioning via GCP

1. Go into terraform-folder and run `terraform plan`, then `terraform apply`
1. Go into ansible-folder and check, that `ansible/ansible.cfg` is uncomment for CGP
1. Run `ansible-playbook playbook.yaml`

## TODO:
- Consider using custom VPC in GCP (not default)