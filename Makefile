ansible-setup:
	ansible-galaxy install --roles-path ./roles -r requirements.yml

deploy:
	ansible-playbook playbook.yml -vv --ask-vault-pass -i inventory.ini -u root

encrypt-vars:
	ansible-vault encrypt group_vars/webservers/vault.yml

decrypt-vars:
	ansible-vault decrypt group_vars/webservers/vault.yml

view-encrypted-vars:
	ansible-vault view group_vars/webservers/vault.yml
