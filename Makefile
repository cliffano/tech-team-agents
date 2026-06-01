ci: deps lint install-claude-agents

deps:
	npm install -g @anthropic-ai/claude-code

deps-extra-apt:
	apt-get install -y markdownlint yamllint

lint:
	yamllint .github/workflows/*.yaml
	mdl -r ~MD013,~MD029 */*.md

install-claude-agents:
	mkdir -p ~/.claude/agents
	cp **/*.md ~/.claude/agents/

test-claude-agents:
	for agent in *//*.md; do \
		name=$$(basename $$agent .md); \
		echo ""; \
		echo "Testing @$$name..."; \
		claude -p "@$$name Introduce yourself and describe what you're specialized in doing."; \
	done

release-major:
	rtk release --release-increment-type major

release-minor:
	rtk release --release-increment-type minor

release-patch:
	rtk release --release-increment-type patch

.PHONY: ci deps deps-extra-apt lint install-claude-agents test-claude-agents release-major release-minor release-patch
