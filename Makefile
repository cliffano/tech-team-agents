ci: deps lint install-claude-agents

deps:
	npm install -g @anthropic-ai/claude-code

deps-extra-apt:
	apt-get install -y markdownlint yamllint

lint:
	yamllint .github/workflows/*.yaml
	mdl -r ~MD013,~MD029 */*.md

# Claude Code — installs agents globally (~/.claude/agents/)
# AGENT=<file>: one agent. COMPANY=<folder>: one company. Otherwise: all agents.
install-claude-agents:
	mkdir -p ~/.claude/agents
ifdef AGENT
	cp $(AGENT) ~/.claude/agents/
else ifdef COMPANY
	cp $(COMPANY)/*.md ~/.claude/agents/
else
	cp **/*.md ~/.claude/agents/
endif

test-claude-agents:
	for agent in *//*.md; do \
		name=$$(basename $$agent .md); \
		echo ""; \
		echo "Testing @$$name..."; \
		claude -p "@$$name Introduce yourself and describe what you're specialized in doing."; \
	done

# Cursor — installs agents as rules in the current project (.cursor/rules/)
# AGENT=<file>: one agent. COMPANY=<folder>: one company. Otherwise: all agents.
install-cursor-agents:
	mkdir -p .cursor/rules
ifdef AGENT
	cp $(AGENT) ".cursor/rules/$$(basename $(AGENT) .md).mdc"
else ifdef COMPANY
	for f in $(COMPANY)/*.md; do \
		cp "$$f" ".cursor/rules/$$(basename $$f .md).mdc"; \
	done
else
	for f in **/*.md; do \
		cp "$$f" ".cursor/rules/$$(basename $$f .md).mdc"; \
	done
endif

# GitHub Copilot — installs agents into the workspace instruction file (.github/copilot-instructions.md)
# AGENT=<file>: one agent. COMPANY=<folder>: one company. Otherwise: all agents (concatenated).
install-copilot-agent:
	mkdir -p .github
ifdef AGENT
	cp $(AGENT) .github/copilot-instructions.md
else ifdef COMPANY
	cat $(COMPANY)/*.md > .github/copilot-instructions.md
else
	cat **/*.md > .github/copilot-instructions.md
endif

# Gemini CLI — installs agents into the project-level GEMINI.md instruction file
# AGENT=<file>: one agent. COMPANY=<folder>: one company. Otherwise: all agents (concatenated).
install-gemini-agent:
ifdef AGENT
	cp $(AGENT) GEMINI.md
else ifdef COMPANY
	cat $(COMPANY)/*.md > GEMINI.md
else
	cat **/*.md > GEMINI.md
endif

release-major:
	rtk release --release-increment-type major

release-minor:
	rtk release --release-increment-type minor

release-patch:
	rtk release --release-increment-type patch

.PHONY: ci deps deps-extra-apt lint install-claude-agents test-claude-agents install-cursor-agents install-copilot-agent install-gemini-agent release-major release-minor release-patch
