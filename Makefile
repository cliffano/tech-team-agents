ci: lint

deps-extra-apt:
	apt-get install -y markdownlint yamllint

lint:
	yamllint .github/workflows/*.yaml
	mdl -r ~MD013,~MD029 */*.md

.PHONY: ci deps-extra-apt lint
