# Install Ansible on the host side.
# This is necessary for Ansible to work in Vagrant.
python3 -m venv venv
source ./venv/bin/activate
pip install ansible

# Start Vagrant VM based on the Vagrantfile
# in the same directory.
vagrant up
