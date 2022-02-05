# Automated Installation of MySQL 8
This repo lets you automatically provision a Oracle Linux 7 VM with Vagrant and install MySQL 8 Community Edition on it with the updated packages on it.
## Prerequisites
1. [Virtual Box](https://www.virtualbox.org/) or any other VM solution that Vagrant supports.
2. [Vagrant](https://www.vagrantup.com/) installed.
3. Clone this repo to your local machine.
    ```
    git clone git@github.com:hiriumi/vagrant.git
    ```

## Steps
1. Change directory into the directory where you cloned this repo.
2. Execute vagrant_mysql.sh This script installs Ansible in a Python virtual environment and starts a vagrant VM.
    ```
    ./vagrant_mysql.sh
    ```
3. Vagrantfile automatically provisions an Oracle Linux 7 VM and it picks up `mysql.yaml` and installs everything you need to get MySQL 8 Community edition up and running. What it does are all described in `mysql.yaml` file.
4. 