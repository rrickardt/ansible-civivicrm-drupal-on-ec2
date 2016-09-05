This is sample workflow to provision CiviCRM on Drupal in EC2 instance. Ansible with limit is used, but roles can be combined in main.yml. RDS role is not used, but i tested scenario with one database for multiple instances so i include it here.

It is Ubuntu 14.04 specific.

ec2.py works as a dynamic inventory script.

ansible-playbook -i hosts all.yml -u localuser -k --tags="ec2" --limit=local -K 
 
ansible-playbook -i ec2.py all.yml  -u ubuntu --ssh-common-args='-i <key_to_access_instance.pem' 
# ansible-civivicrm-drupal-on-ec2
