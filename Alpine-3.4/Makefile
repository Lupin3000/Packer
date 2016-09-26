CURRENT_DIR := $(shell pwd)

.PHONY: clean

help:
	@echo "Run make with:"
	@echo " > validate       ...to run packer validation"
	@echo " > build          ...to start packer build"
	@echo " > clean          ...to cleanup for next build"

validate:
	packer validate $(CURRENT_DIR)/packer.json

build:
	packer build $(CURRENT_DIR)/packer.json

clean:
	rm -fr $(CURRENT_DIR)/packer_cache
	rm -fr $(CURRENT_DIR)/target/*
	rm -fr $(CURRENT_DIR)/builds
