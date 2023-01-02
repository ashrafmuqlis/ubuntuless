 #!/bin/bash

echo "Setting Up VM for Vagrant Box"
sudo apt  update

echo "Configuring SSH for Vagrant VM"
echo "ssh-rsa AAAAB3NzaC1yc2EAAAABIwAAAQEA6NF8iallvQVp22WDkTkyrtvp9eWW6A8YVr+kz4TjGYe7gHzIw+niNltGE
FHzD8+v1I2YJ6oXevct1YeS0o9HZyN1Q9qgCgzUFtdOKLv6IedplqoPkcmF0aYet2PkEDo3MlTBckFXPITAMzF8dJSIFo9D8HfdOV0IAdx4O7PtixWKn5y2h
MNG0zQPyUecp4pzC6kivAIhyfHilFR61RGL+GPXQ2MWZWFYbAGjyiYJnAmCP3NOTd0jMZEnDkbUvxhMmBYSdETk1rRgm+R4LOzFUGaHqHDLKLX+FIPKcF96h
rucXzcWyLbIbEgE98OHlnVYCzRdK8jlqm8tehUc9c9WhQ== vagrant insecure public key" >> ~/.ssh/authorized_keys

chmod 0700 ~/.ssh/ && chmod 0600 ~/.ssh/authorized_keys

sudo sed -ie '$a UseDNS no' /etc/ssh/sshd_config

echo "Configuring Vagrant User Privileges"
sudo sed -i '45 s/ */vagrant ALL=(ALL) NOPASSWD:ALL \n/' /etc/sudoers

echo "Configuring Root Password"
sudo passwd root
