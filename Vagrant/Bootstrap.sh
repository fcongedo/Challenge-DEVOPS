#!/bin/bash

# Update and Upgrade
sudo apt-get update -y

# Docker Install
curl -fsSL https://get.docker.com -o get-docker.sh
sudo sh ./get-docker.sh

# Use Docker without sudo
sudo groupadd docker
sudo usermod -aG docker vagrant
newgrp docker

# Install Jenkins and Java
sudo wget -O /usr/share/keyrings/jenkins-keyring.asc \
  https://pkg.jenkins.io/debian-stable/jenkins.io.key
echo deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc] \
  https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null
sudo apt-get update -y
sudo apt-get install fontconfig openjdk-11-jre -y
sudo apt-get install jenkins -yy

# Install tree
sudo apt-get install -y tree

# Clone repo
git clone https://github.com/fcongedo/Challenge-DEVOPS

# Copy files to destination directory
sudo cp /home/vagrant/Challenge-DEVOPS/archivos_bash/archivo2.txt /home/vagrant/Documentos/Proyectos/BlogPersonal/artículos/
sudo cp /home/vagrant/Challenge-DEVOPS/archivos_bash/archivo.txt /home/vagrant/Documentos/Proyectos/BlogPersonal/artículos/
sudo cp /home/vagrant/Challenge-DEVOPS/archivos_bash/buscar_palabra.sh /home/vagrant/Documentos/Proyectos/BlogPersonal/artículos/
sudo cp /home/vagrant/Challenge-DEVOPS/archivos_bash/buscar_remplazar.sh /home/vagrant/Documentos/Proyectos/BlogPersonal/artículos/
sudo cp /home/vagrant/Challenge-DEVOPS/archivos_bash/menu.sh /home/vagrant/Documentos/Proyectos/BlogPersonal/artículos/

# Change permissions to execute for all .sh files in the destination directory
sudo chmod +x /home/vagrant/Documentos/Proyectos/BlogPersonal/artículos/*.sh

