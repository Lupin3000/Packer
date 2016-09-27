CURRENT_DIR := $(shell pwd)

.PHONY: clean

help:
	@echo "Run make with:"
	@echo " > validate       ...to run packer validation"
	@echo " > build          ...to start packer build"
	@echo " > up             ...to start vagrant"
	@echo " > reload         ...to reload vagrant"
	@echo " > ssh            ...to ssh into vm"
	@echo " > clean          ...to cleanup for next build"

validate:
	packer validate $(CURRENT_DIR)/packer.json

build:
	packer build $(CURRENT_DIR)/packer.json

add:
	vagrant box add packer/alpine $(CURRENT_DIR)/target/virtualbox-Alpine-3.4.box

up:
	cd $(CURRENT_DIR)/target && vagrant up

reload:
	cd $(CURRENT_DIR)/target && vagrant reload

ssh:
	cd $(CURRENT_DIR)/target && vagrant ssh

clean:
	rm -fr $(CURRENT_DIR)/packer_cache
	rm -fr $(CURRENT_DIR)/target/*
	rm -fr $(CURRENT_DIR)/builds
