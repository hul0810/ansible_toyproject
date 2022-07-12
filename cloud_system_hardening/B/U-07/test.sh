#!/bin/bash

sudo useradd test
sudo touch /etc/testzz
sudo touch /etc/docker/testzz
sudo touch /tmp/testzz

sudo chown test.test /etc/testzz
sudo chown test.test /etc/docker/testzz
sudo chown test.test /tmp/testzz

sudo userdel -r test
