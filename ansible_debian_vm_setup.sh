#!/bin/bash

echo "[+] Setting up ansible VM"
sudo apt install git -y
git clone https://github.com/Orange-Cyberdefense/GOAD.git
sudo apt install python3-pip -y
python3 -m pip install ansible 
export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games"
exec bash
python3 -m pip install pywinrm 
ansible-galaxy install -r requirements.yml 

echo "[+} Setup complete"

echo "cd into 'GOAD/ansible' and edit the inventory file.. then run:
echo 'ansible-playbook -i ../ad/sevenkingdoms.local/inventory main.yml'
