link:
	ansible-playbook link-dotfiles.yml -i local -vv

install-ansible:
	if [ "$(uname)" == "Darwin" ]; then
	    $(MAKE) install-ansible-osx
	elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
	    $(MAKE) install-ansible-debian
	fi

install-ansible-osx:
	brew install ansible

install-ansible-debian:
	sudo apt-get install software-properties-common
	sudo apt-add-repository ppa:ansible/ansible
	sudo apt-get update
	sudo apt-get install ansible
