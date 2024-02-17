SHELL := /bin/bash
NAME := fansilet-dotfiles
VERSION := $(shell awk '/version:/ {print $$2}' galaxy.yml)

.PHONY: help
help: ## - print the help and usage
	@printf "Project Usage:\n"
	@(if grep -E "^include" $(MAKEFILE_LIST) > /dev/null; then \
		grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) |cut -d':' -f2-|sort |awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'; \
	else \
		grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) |sort |awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'; \
	fi)

.PHONY: build
build: clean ## - build the collection
	@ansible-galaxy collection build --force

.PHONY: clean
clean: ## - clean collection builds
	@if [ -e "$(NAME)-$(VERSION).tar.gz" ];then \
		rm -v  "$(NAME)-$(VERSION).tar.gz"; fi

.PHONY: push
push: ## - publish the collection to ansible-galaxy
	@ansible-galaxy collection publish "$(NAME)-$(VERSION).tar.gz"
