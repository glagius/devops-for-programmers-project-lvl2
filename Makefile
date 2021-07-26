ansible-setup:
	ansible-galaxy install --roles-path ./roles -r requirements.yml

deploy:
	ansible-playbook playbook.yml -i inventory.ini -u root