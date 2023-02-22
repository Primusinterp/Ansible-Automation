#!/bin/bash

echo "[+] Setting up ansible VM"
sudo apt install git -y
git clone https://github.com/Orange-Cyberdefense/GOAD.git
sudo apt install python3-pip -y
python3 -m pip install ansible -y
export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games"
exec bash
python3 -m pip install pywinrm -y
ansible-galaxy install -r requirements.yml -y
ansible-playbook -i ../ad/sevenkingdoms.local/inventory main.yml

echo [+} setup complete"
