#!/bin/bash

echo "[+] Setting up ansible VM"
sudo apt install python3-pip -y
python3 -m pip install ansible 
export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/home/Oliver/.local/bin"
exec bash
python3 -m pip install pywinrm 
cd ~/ADSMGOAD/ansible
ansible-galaxy install -r requirements.yml 

echo "[+] Running ansible playbook
ansible-playbook -i ~/ADSMGOAD/ansible/hosts main.yml
echo "[+} Setup complete"


