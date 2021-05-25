
help: ## show this help
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) \
		| awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%s\033[0m|%s\n", $$1, $$2}' \
		| column -t -s '|'

update-tools-install: ## Update tools-install from latest benc-uk master content
	git subtree pull --prefix snippets/tools-install/ --squash https://github.com/benc-uk/tools-install master