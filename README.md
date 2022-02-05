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
    source ./vagrant_mysql.sh
    ```
3. Vagrantfile automatically provisions an Oracle Linux 7 VM and it picks up `mysql.yaml` and installs everything you need to get MySQL 8 Community edition up and running. Here are things that happens when `mysql.yaml` is executed on the VM.
    * Copy mysql80-community-release-el7-5.noarch.rpm to /root on the VM. It is used to install the yum repo for MySQL Server 8 Community edition.
    * Upgrades all yum packages.
    * Install mysql-server, vim and htop.
    * Enable mysqld and start the daemon.
    * Detect the initial root password from /var/log/mysqld.log
    * Place the password in /root/.my.cnf so that you can acccess mysql without entering password.


## How to Start to Use mysql Client
You may want to change the initial password to something else. Here are the steps.
1. SSH into Vagrant.
    ```
    vagrant ssh
    ```
1. Start mysql client.
    ```
    sudo mysql
    ```
    You will not be prompted for a password here because the initial password is placed in /root/.my.cnf It is your choice whether you change the root password or not. In my opinion, it is not necessary becuase you can start mysql client without password and the password is quite secure by default anyway. After all, this is just a VM for testing MySQL. You can destroy and reprovision all you want.

## How to Destroy and Reprovision
There might be a time when you want to destroy the VM and restart from scratch. Here are the steps.
1. Open terminal.
1. cd into the directory where you cloned this repo.
1. Stop the Vagrant VM.
    ```
    vagrant halt
    ```
1. Destroy the Vagrant VM.
    ```
    vagrant destroy
    ```
1. Reprovision a new Vagrant VM.
    ```
    vagrant up
    ```
    `mysql.yaml` gets executed automatically when you create a new VM and set everything up again. 
