SHELL := /bin/bash

setup: setup-nvm setup-rvm setup-perlbrew
setup-pythonbrew:
	@if [ ! -d ~/.pythonbrew ] ; then curl -kL http://xrl.us/pythonbrewinstall | bash;fi
setup-rvm:
	@if [ ! -d ~/.rvm ] ; then curl --insecure -L https://get.rvm.io | bash -s stable --rails; fi
setup-nvm:
	@if [ ! -d ~/.nvm ] ; then git clone https://github.com/creationix/nvm.git ~/.nvm ; fi
	@. ~/.nvm/nvm.sh && nvm install v0.8.7
setup-perlbrew:
	@if [ ! -d ~/.perl5 ] ; then curl -kL http://install.perlbrew.pl | bash; fi

.PHONY:setup
