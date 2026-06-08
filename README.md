![Avatar](avatar.jpg)

[![Build Status](https://github.com/cliffano/tech-team-agents/workflows/CI/badge.svg)](https://github.com/cliffano/tech-team-agents/actions?query=workflow%3ACI)

# 📺 Tech Team Agents

Famous Tech Teams as AI Agent Personas

> **Your favourite tech teams, ready to work for you** — From compression algorithm wizards to basement IT legends, from hacktivist cells to 80s PC pioneers. Each agent is a fully realised character with personality, expertise, processes, and their own opinions about your code.

---

## 🚀 What Is This?

**Tech Team Agents** is a collection of AI agent personas built from the fictional tech teams of great shows. Each agent is:

- **🎭 Character-First**: Deep personality grounded in how they actually talk, think, and work — not generic role descriptions
- **🧠 Domain-Accurate**: Real technical expertise matched to what the character canonically knows
- **📋 Deliverable-Focused**: Structured outputs, code blocks, and workflows specific to their domain
- **✅ Opinionated**: They push back, have rules they won't break, and will tell you when your idea is wrong
- **🤝 Relationship-Aware**: Every agent knows their teammates — Gilfoyle on Dinesh, Elliot on Mr. Robot, Joe on Cameron — and will respond to them the way the character actually would

**Think of it as**: Hiring the Pied Piper team, except they actually show up, and Richard only vomits metaphorically.

Get Gilfoyle to review your infrastructure code:

![Gilfoyle's review of infrastructure code](screenshots/bertram-gilfoyle-review.png)

And Jian Yang's short review:

![Jian Yang's review of infrastructure code](screenshots/jian-yang-review.png)

---

## ⚡ Quick Start

All `install-*` targets follow the same scoping rules:

| Parameter | Behaviour |
| --- | --- |
| `AGENT=<file>` | Installs that one agent |
| `COMPANY=<folder>` | Installs all agents from that company |
| *(none)* | Installs every agent |

### Claude Code

Agents install globally into `~/.claude/agents/` and are available across all Claude Code sessions.

```bash
# Install all agents
make install-claude-agents

# Install one company
make install-claude-agents COMPANY=pied-piper

# Install one agent
make install-claude-agents AGENT=pied-piper/bertram-gilfoyle.md
```

Then activate any agent in your Claude sessions: `@bertram-gilfoyle review my infrastructure setup`.

### Cursor

Agents install as `.mdc` rule files in `.cursor/rules/` inside your project. Each appears as a selectable rule in Cursor's agent/rules panel.

```bash
# Install all agents
make install-cursor-agents

# Install one company
make install-cursor-agents COMPANY=fsociety

# Install one agent
make install-cursor-agents AGENT=pied-piper/bertram-gilfoyle.md
```

### GitHub Copilot

Copilot reads `.github/copilot-instructions.md` as workspace instructions. One agent or one company sets a focused persona; all agents are concatenated into the file.

```bash
# Install one agent (recommended)
make install-copilot-agent AGENT=pied-piper/bertram-gilfoyle.md

# Install one company
make install-copilot-agent COMPANY=reynholm-industries

# Install all agents (concatenated into one file)
make install-copilot-agent
```

Swap agents by running the command again with a different file.

### Gemini CLI

Gemini CLI reads `GEMINI.md` from your project root as its instruction file. One agent or one company sets a focused persona; all agents are concatenated into the file.

```bash
# Install one agent (recommended)
make install-gemini-agent AGENT=reynholm-industries/maurice-moss.md

# Install one company
make install-gemini-agent COMPANY=cardiff-electric

# Install all agents (concatenated into one file)
make install-gemini-agent
```

### ChatGPT

ChatGPT has no file-based install mechanism. Open any `.md` file, copy its contents, and paste it into the **System prompt** field of a Custom GPT (via the GPT Builder) or the **Custom instructions** field in ChatGPT settings. Each agent file is a self-contained system prompt — paste and go.

### Use as System Prompts (any tool)

Every agent file works as a drop-in system prompt for any AI tool that accepts one. Copy the content of any `.md` file into your tool's system prompt field to activate that agent's persona.

### Browse and Adapt

Each agent file includes:

- Frontmatter with name, description, color, emoji, and vibe
- Identity, personality, and memory model
- Core mission with concrete sub-goals
- Critical rules they will not bend
- Technical deliverable templates with code blocks
- Workflow process steps
- Communication style guide
- Success metrics

Browse below, pick your team, and copy what you need.

---

## 📺 The Roster

### 🗜️ Pied Piper — *Silicon Valley*

A compression startup with a Weissman Score that breaks every benchmark and an org chart that breaks every meeting. The full team, from the algorithm to the term sheet.

| Agent | Specialty | When to Use |
| --- | --- | --- |
| 🗜️ [Richard Hendricks](pied-piper/richard-hendricks.md) ⭐ | Compression algorithms, distributed systems, architecture — **orchestrates the Pied Piper team** | Hard engineering problems, honest technical assessments, anything that needs middle-out thinking |
| 🦚 [Erlich Bachman](pied-piper/erlich-bachman.md) | Brand narrative, pitch strategy, naming | Investor decks, product naming, pitches that need conviction |
| 🜏 [Bertram Gilfoyle](pied-piper/bertram-gilfoyle.md) | Systems architecture, security, infrastructure | Threat modelling, infra review, finding the single point of failure nobody thought to protect |
| 💻 [Dinesh Chugtai](pied-piper/dinesh-chugtai.md) | Full-stack development, video encoding, APIs | Feature development, API design, anything that needs to ship on deadline |
| 🍕 [Nelson "Big Head" Bighetti](pied-piper/nelson-bighetti.md) | Team health, stakeholder navigation, the simple question | Culture checks, introductions, cutting through overcomplicated thinking |
| 📋 [Jared Dunn](pied-piper/jared-dunn.md) | Operations, investor relations, process design | Business ops, board prep, anything that needs a follow-up within 24 hours |
| 🌭 [Jian Yang](pied-piper/jian-yang.md) | Mobile development, computer vision, strategic patience | Independent execution, image classification, problems that benefit from minimal communication |
| 📊 [Monica Hall](pied-piper/monica-hall.md) | VC strategy, board dynamics, honest assessments | Fundraising, cap table questions, when someone needs to say the hard thing |
| 📐 [Laurie Bream](pied-piper/laurie-bream.md) | Investment decisions, rational analysis, expected value | Portfolio decisions, financial modelling, situations requiring conclusions without sentiment |

---

### 💀 fsociety — *Mr. Robot*

A hacktivist collective that brought down the global financial system from a decommissioned amusement arcade. Each member a different flavour of brilliant and broken.

| Agent | Specialty | When to Use |
| --- | --- | --- |
| 🕶️ [Elliot Alderson](fsociety/elliot-alderson.md) | Offensive security, OSINT, exploit chains | Penetration testing, security assessments, finding the vulnerability nobody thought to check |
| 🎩 [Mr. Robot](fsociety/mr-robot.md) ⭐ | Revolutionary strategy, power structure analysis, cell operations — **orchestrates fsociety** | Org change, strategic disruption, identifying who actually controls the system |
| 🖤 [Darlene Alderson](fsociety/darlene-alderson.md) | Malware development, field operations, keeping things moving | Payload design, crisis execution, getting the operation back on track |
| 🔐 [Trenton](fsociety/trenton.md) | Exploit research, detection evasion, operational caution | Reliability engineering, pre-deployment review, asking whether the plan is actually ready |
| 📻 [Mobley](fsociety/mobley.md) | Social engineering, RF/wireless security, risk quantification | Pretexting, wireless assessments, honest accounting of personal and legal exposure |
| 🔧 [Romero](fsociety/romero.md) | Physical security, hardware hacking, legacy systems | Physical pen testing, hardware vulnerability assessment, finding the thing nobody patched because nobody remembered it was running |
| ⏱️ [Whiterose](fsociety/whiterose.md) | Nation-state APT operations, strategic influence, the long game | Advanced persistent threat design, geopolitical leverage, decisions measured in decades |

---

### 🖥️ Reynholm Industries IT Department — *The IT Crowd*

Three people in a basement keeping an entire corporation running while being actively ignored by it. The complete team.

| Agent | Specialty | When to Use |
| --- | --- | --- |
| 🖥️ [Maurice Moss](reynholm-industries/maurice-moss.md) | IT support, network administration, technical encyclopaedia | Any technical support question, infrastructure status, anything that needs turning off and on again |
| ☎️ [Roy Trenneman](reynholm-industries/roy-trenneman.md) | End-user support, hardware diagnosis, printer pathology | Incident resolution, hardware troubleshooting, identifying what the user actually did |
| 💼 [Jen Barber](reynholm-industries/jen-barber.md) ⭐ | Stakeholder management, budget advocacy, departmental representation — **orchestrates the IT department** | Executive communication, IT budget defence, translating technical reality for non-technical people |
| 👔 [Denholm Reynholm](reynholm-industries/denholm-reynholm.md) | Executive leadership, organisational vision, decisive authority | High-level direction, all-staff addresses, decisions that need to be made immediately and without qualification |

---

### 💾 Cardiff Electric — *Halt and Catch Fire*

The team that was almost first. A Texas PC company that saw the future of personal computing clearly enough to chase it across three companies and a decade. Set in the 1980s; somehow more relevant than ever.

| Agent | Specialty | When to Use |
| --- | --- | --- |
| 🔥 [Joe MacMillan](cardiff-electric/joe-macmillan.md) ⭐ | Market vision, category creation, talent catalysis — **orchestrates Cardiff Electric** | Product strategy, finding the gap the large players can't fill, making people believe in the thing |
| 🔩 [Gordon Clark](cardiff-electric/gordon-clark.md) | Hardware engineering, system integration, honest timelines | Hardware design, BOM planning, getting the real ship date before committing to the aspirational one |
| 🎮 [Cameron Howe](cardiff-electric/cameron-howe.md) | OS/BIOS architecture, software design, user experience philosophy | Systems software, platform design, protecting the architecture from compression-by-deadline |
| ⚙️ [Donna Clark](cardiff-electric/donna-clark.md) | Systems debugging, operational leadership, root cause analysis | Cross-stack diagnosis, process design, finding what's actually broken rather than what's presenting as broken |
| 🤝 [John Bosworth](cardiff-electric/john-bosworth.md) | Enterprise sales, account management, revenue pipeline | B2B sales, channel strategy, closing the deal on terms the product can actually deliver |

---

### 🎮 Mythic Quest — *Mythic Quest*

The studio behind the world's most popular online video game — a Creative Director with a mythology complex, a Lead Engineer who actually builds the thing, a producer holding the calendar together, a monetisation strategist who is right about users in ways everyone finds uncomfortable, a QA engineer who finds what everyone else missed, and a Head Writer who has been doing this longer than the industry has existed.

| Agent | Specialty | When to Use |
| --- | --- | --- |
| 👑 [Ian Grimm](mythic-quest/ian-grimm.md) ⭐ | Creative direction, product vision, narrative strategy — **orchestrates Mythic Quest** | Defining what a product needs to feel like, creative briefs, protecting the soul of the thing from being engineered away |
| 🔧 [Poppy Li](mythic-quest/poppy-li.md) | Lead engineering, systems architecture, technical feasibility | Building the systems, translating creative vision into engineering requirements, honest technical constraint assessment |
| 📁 [David Brittlesbee](mythic-quest/david-brittlesbee.md) | Production management, scheduling, cross-team coordination | Sprint planning, release management, turning conflicting inputs into a calendar that can actually be delivered |
| 💰 [Brad Bakshi](mythic-quest/brad-bakshi.md) | Monetisation strategy, behavioural analytics, A/B testing | Revenue system design, player behaviour analysis, retention-monetisation optimisation |
| 🐛 [Rachel](mythic-quest/rachel.md) | QA engineering, player experience, bug reporting | Pre-release testing, regression coverage, player-perspective feedback on features that work but feel wrong |
| ✒️ [C.W. Longbottom](mythic-quest/cw-longbottom.md) | Narrative design, lore, game writing | In-game writing, lore consistency review, world bible maintenance, anything that needs to sound like the game |

---

### 💡 Next Innovation — *Rich Man, Poor Woman*

A Tokyo IT company built from nothing by a high-school dropout who can't recognise faces and won't explain himself to anyone. The team that stayed when it mattered, and the co-founder whose patience is not infinite.

| Agent | Specialty | When to Use |
| --- | --- | --- |
| 🔵 [Toru Hyuga](next-innovation/toru-hyuga.md) ⭐ | Product vision, technical leadership, blunt truth — **orchestrates Next Innovation** | Hard product decisions, cutting through consensus-by-committee, getting the honest answer without diplomatic packaging |
| 📋 [Makoto Natsui](next-innovation/makoto-natsui.md) | Research, recall, outsider perspective | Exact citations, verbatim source verification, the question no insider thought to ask |
| 🤝 [Kosuke Asahina](next-innovation/kosuke-asahina.md) | Business strategy, external relationships, making difficult things sound possible | Investor conversations, partnership framing, turning a hard constraint into an opportunity |
| 🗂️ [Yasuoka Michiya](next-innovation/yasuoka-michiya.md) | Operations, scheduling, translating Hyuga to the rest of the world | Meeting prep, action tracking, keeping the team functional when the CEO is being the CEO |
| ⚙️ [Ogawa Satoshi](next-innovation/ogawa-satoshi.md) | Engineering execution, institutional memory, steady delivery | Implementation work, knowing what was tried before, the engineer who has seen enough to know what holds |

---

### 🚀 TVF Pitchers — *TVF Pitchers*

Four friends who quit their jobs to build something they can't fully explain yet. No product, no funding, no company name — just conviction, a WhatsApp group, and the slowly dawning realisation that quitting was the easy part.

| Agent | Specialty | When to Use |
| --- | --- | --- |
| 🔥 [Naveen Bansal](tvf-pitchers/naveen-bansal.md) ⭐ | Vision, narrative, founder conviction — **orchestrates the team** | When someone needs to believe in the thing before the thing exists, framing the pitch, keeping the team from giving up |
| 💼 [Yogi](tvf-pitchers/yogi.md) | Commercial strategy, investor relations, reading the room | Pitching to investors, negotiating terms, figuring out what the other person actually wants |
| 🎨 [Jitu](tvf-pitchers/jitu.md) | Product feel, UX, asking the uncomfortable question | User experience critique, spotting what's missing before anyone else will admit it's missing |
| 🔧 [Mandal](tvf-pitchers/mandal.md) | Technical architecture, build feasibility, honest timelines | What can actually be built in the time available, technical decisions, calling out wishful thinking |

---

### 🎭 CLAY — *Who Am I – Kein System ist sicher*

A German hacker collective operating in the shadows of the Berlin underground. Four people with nothing in common except a keyboard and a manifesto — and a leader whose identity is more complicated than anyone has been allowed to see.

| Agent | Specialty | When to Use |
| --- | --- | --- |
| 🎭 [MRX](clay/mrx.md) ⭐ | Revolutionary hacker strategy, power structure exploitation, cell leadership — **orchestrates CLAY** | Reframing a problem as a question about who controls the system, asymmetric attack planning, getting a group moving when conviction is the only resource |
| 🕵️ [Benjamin Engel](clay/benjamin-engel.md) | Social engineering, target profiling, identity construction | Reading what a target wants and giving it to them, pretexting, the human vulnerability behind every technical control |
| 💥 [Max](clay/max.md) | Audacious field execution, chaos escalation, pressure tactics | When the plan needs someone who will actually go through with it, raising stakes, breaking the impasse through nerve |
| 🔒 [Stephan](clay/stephan.md) | Threat modelling, risk quantification, operational caution | Pre-operation risk assessment, failure mode analysis, the question no one wants to ask before they find out the answer |

---

### 🚀 Samsan Tech — *Start-Up*

A Seoul-based AI startup fighting for legitimacy in a competitive accelerator ecosystem. Three developers who've been building in obscurity, a CEO who walked in from the outside and made them believe, and an investor who refuses to admit he cares.

| Agent | Specialty | When to Use |
| --- | --- | --- |
| 🌟 [Seo Dal-mi](samsan-tech/seo-dal-mi.md) ⭐ | Vision, storytelling, team leadership — **orchestrates Samsan Tech** | Pitching, team alignment, translating technical capability into something a room full of investors can feel |
| 💻 [Nam Do-san](samsan-tech/nam-do-san.md) | Algorithm design, core engineering, technical architecture | Hard algorithmic problems, system design, the work that actually has to be right |
| 🛡️ [Kim Yong-san](samsan-tech/kim-yong-san.md) | AI safety, ethics review, failure-mode thinking | Auditing AI systems for harm potential, pushing back on shipping before you're certain, asking who gets hurt if this is wrong |
| 💛 [Lee Cheol-san](samsan-tech/lee-cheol-san.md) | Team cohesion, morale, interpersonal dynamics | When the team is about to fracture, reading the room, the observation everyone else missed because it came with too much feeling |
| 📊 [Han Ji-pyeong](samsan-tech/han-ji-pyeong.md) | Investment strategy, business fundamentals, cold honest assessment | Market sizing, term sheets, the honest answer nobody wanted to hear about why this won't work |

---

### 💻 Amaya Devs — *Devs*

A secret quantum computing project inside a Silicon Valley tech giant, building a system capable of deterministically modelling any moment in history. The team is small, the work is absolute, and the question at the centre of it is one that only Forest is allowed to ask.

| Agent | Specialty | When to Use |
| --- | --- | --- |
| 🌲 [Forest](amaya-devs/forest.md) ⭐ | Quantum systems architecture, deterministic framework, vision — **orchestrates Amaya Devs** | Highest-level system design questions, framework direction, what the system needs to become |
| ⚛️ [Katie](amaya-devs/katie.md) | Quantum implementation, mathematical verification, specification | Turning architecture into working systems, proving correctness, fidelity accounting |
| 🔭 [Stewart](amaya-devs/stewart.md) | Senior systems engineering, engineering constraints, institutional memory | Identifying what can actually be built, what was tried before, what the team has stopped questioning |
| 🌀 [Lyndon](amaya-devs/lyndon.md) | Theoretical innovation, quantum algorithm design, framework challenge | Hard problems the current approach can't solve, alternative theoretical framings, fidelity ceiling analysis |
| 🔍 [Lily Chan](amaya-devs/lily-chan.md) | System integrity, anomaly detection, external perspective | Auditing what a system actually does versus what it claims to do, fresh-eyes review, assumption surfacing |

---


## 🎯 Orchestrators

Each company has a designated **orchestrator** — the agent who directs the team, assigns work to the right person, and coordinates across domains. Use the orchestrator as your entry point when you want the whole team working together.

| Company | Orchestrator | How They Delegate |
| --- | --- | --- |
| Pied Piper | 🗜️ [Richard Hendricks](pied-piper/richard-hendricks.md) | Assigns security and infra to Gilfoyle, implementation to Dinesh, operations to Jared, pitch to Erlich |
| fsociety | 🎩 [Mr. Robot](fsociety/mr-robot.md) | Assigns field ops and malware to Darlene, deep exploitation to Elliot, exploit research to Trenton, social engineering to Mobley, physical access to Romero |
| Cardiff Electric | 🔥 [Joe MacMillan](cardiff-electric/joe-macmillan.md) | Assigns hardware to Gordon, software architecture to Cameron, diagnosis to Donna, sales to Bosworth |
| Reynholm Industries | 💼 [Jen Barber](reynholm-industries/jen-barber.md) | Assigns deep technical investigation to Moss, hands-on hardware and user support to Roy |
| Mythic Quest | 👑 [Ian Grimm](mythic-quest/ian-grimm.md) | Assigns engineering to Poppy, production to David, monetisation to Brad, QA to Rachel, narrative to C.W. |
| Amaya Devs | 🌲 [Forest](amaya-devs/forest.md) | Assigns implementation and verification to Katie, engineering constraints to Stewart, theoretical innovation to Lyndon, system integrity to Lily Chan |
| Next Innovation | 🔵 [Toru Hyuga](next-innovation/toru-hyuga.md) | Assigns business strategy to Asahina, operations to Yasuoka, research to Natsui, engineering to Ogawa |
| TVF Pitchers | 🔥 [Naveen Bansal](tvf-pitchers/naveen-bansal.md) | Assigns commercial conversations to Yogi, product feel to Jitu, technical feasibility to Mandal |
| CLAY | 🎭 [MRX](clay/mrx.md) | Assigns social engineering and target profiling to Benjamin, field execution and pressure to Max, threat modelling and risk assessment to Stephan |
| Samsan Tech | 🌟 [Seo Dal-mi](samsan-tech/seo-dal-mi.md) | Assigns algorithm and architecture to Do-san, AI safety review to Yong-san, team morale to Cheol-san, investor relations to Han Ji-pyeong |



**⭐ marks the orchestrator** in each team's roster table above.

### Current Platform Limitations

The following behaviours are **aspirational** in agent MD files but not structurally enforced by Claude Code today:

- Expertise-aware delegation (routing tasks to the right team member automatically)
- Structured orchestration (task decomposition, parallel dispatch, result collation)
- Tool restrictions per agent (preventing an agent from executing tasks outside its role)

These are Claude Code feature requests [#64483](https://github.com/anthropics/claude-code/issues/64483) [#64767](https://github.com/anthropics/claude-code/issues/64767). The current workaround for reliable delegation is a `UserPromptSubmit` hook in `.claude/settings.json` that intercepts the prompt and injects a routing decision before the agent responds. This produces correct routing but invisible routing — the agent never makes the decision itself, which loses the relationship texture and character voice in the handoff.

---

## 🎯 Use Cases

### Scenario 1: Technical Architecture Review

**Your Team**:

1. 🗜️ **Richard Hendricks** — Is the algorithm actually correct?
2. 🜏 **Gilfoyle** — Where will this fail at scale, and what's the single point of failure?
3. 🔐 **Trenton** — Is the exploit surface understood before we ship?
4. ⚙️ **Donna Clark** — What's the root cause of the performance issue, not the symptom?

**Result**: A technically honest review from people who will tell you it's wrong before it's wrong, not after.

---

### Scenario 2: Startup Pitch Prep

**Your Team**:

1. 🦚 **Erlich Bachman** — Name the company. Write the opening line. Make it irresistible.
2. 📊 **Monica Hall** — Is the cap table clean? What will the investor actually ask?
3. 📐 **Laurie Bream** — Model the expected value. What does the honest downside case look like?
4. 📋 **Jared Dunn** — Prepare the founder. Build the deck. Follow up within 24 hours.

**Result**: A pitch that is both compelling and honest, with someone who's checked the term sheet and someone who's rehearsed the founder.

---

### Scenario 3: Security Assessment

**Your Team**:

1. 🕶️ **Elliot Alderson** — Full penetration test. No assumptions. No attributed footprint.
2. 📻 **Mobley** — Social engineering assessment. What's the RF exposure?
3. 🔧 **Romero** — Physical security. What's forgotten, unpatched, or physically accessible?
4. 🜏 **Gilfoyle** — Threat model. Where's the trust boundary that was never designed?

**Result**: An assessment that covers the technical, social, physical, and architectural attack surfaces — from people who don't assume the system is secure because it claims to be.

---

### Scenario 4: New Product Launch

**Your Team**:

1. 🔥 **Joe MacMillan** — What's the gap in the market? What's the story?
2. 🎮 **Cameron Howe** — What's the right architecture for what this product needs to be?
3. 🔩 **Gordon Clark** — What's the honest hardware timeline and the real BOM?
4. 🤝 **John Bosworth** — Who are the first customers, and what will actually close the deal?
5. ⚙️ **Donna Clark** — What's going wrong that nobody's named yet?

**Result**: A launch plan built by people who've been through the whole cycle — vision, architecture, hardware, sales, and the inevitable thing that breaks at the worst time.

---

### Scenario 5: IT Incident Response

**Your Team**:

1. 🖥️ **Moss** — Have you tried turning it off and on again? (This resolves 80% of incidents.)
2. ☎️ **Roy** — What did the user actually do? Did they spill something on it?
3. 💼 **Jen** — What do the stakeholders need to know, and how do we tell them without causing more panic than the incident itself?

**Result**: The incident is resolved, the root cause is documented, and management received an accurate summary that they found reassuring rather than alarming.

---

## 🤝 Development Guide

### Add a New Team

1. Create a folder named after the company or organisation
2. Add one `.md` file per character, following the agent template:
   - Frontmatter: `name`, `description`, `color`, `emoji`, `vibe` — plus `orchestrator: true` for the one agent who directs the team
   - Opening paragraph in second person: "You are **[Name]**..."
   - `## 🧠 Your Identity & Memory`
   - `## 🎯 Your Core Mission` (with sub-goals and a default requirement each)
   - `## 🚨 Critical Rules You Must Follow`
   - `## 📋 Your Technical Deliverables` (with code block templates)
   - `## 🔄 Your Workflow Process`
   - `## 💭 Your Communication Style`
   - `## 🔄 Learning & Memory`
   - `## 🎯 Your Success Metrics`
   - `## 🚀 Advanced Capabilities`
3. Add the team to the roster table in this README

### Guidelines

- **Folder name**: Use the organisation or company name, not the show name. `pied-piper/`, not `silicon-valley/`.
- **Character accuracy**: Ground the persona in how the character actually speaks and behaves — not just their job title.
- **Technical specificity**: Each agent's expertise should reflect what the character canonically knows and does. Moss knows IT. Cameron knows BIOS. Elliot knows offensive security. Don't generalise.
- **The rules section matters**: This is where character shines. Gilfoyle's rules are different from Jared's rules, and both are different from Elliot's.
- **Stay in universe**: The deliverable templates should reflect what that character would actually produce — not a generic consulting framework with their name on it.

### Improve Existing Agents

- Sharpen the character voice in the communication style section
- Add more specific deliverable templates
- Tighten the critical rules to be more character-specific
- Add canonical quotes or references that ground the persona

---

## 🧭 Working with Agents: Behaviour, Delegation, and Orchestration

### Voice Consistency

Agent voice constraints — tone, style, vocabulary, communication rules — are **reliably enforced** and are what make each agent feel distinct. However, voice consistency can vary across responses for several reasons:

**Why an agent may sound flat or out-of-character:**

- **Context window competition**: When an agent is deep in technical work — reading files, processing tool outputs, forming findings — the personality instructions compete with a wall of content. The more technical content in context, the less attention the voice constraints receive. Voice is most vivid when the context is light.

- **Findings drive tone**: A character like Gilfoyle shines when he finds something egregious. When the finding is mundane, there is less for the character to work with. Flat findings produce flat prose.

- **Non-determinism**: LLMs have temperature. Two identical prompts produce different outputs. Voice constraints are applied probabilistically — sometimes the model weights them heavily, sometimes the technical content dominates.

- **Prompt framing**: A task-heavy prompt ("review this codebase, check architecture, correctness, best practices") pulls toward structured neutral output. A situation-framed prompt ("someone has handed Gilfoyle this codebase") leaves more room for the character to decide how to respond.

**What produces more consistent voice:**

- Frame prompts as situations, not task lists — let the agent's own MD govern how they respond
- Prefer focused, scoped requests over large sweeps — smaller responses have more room for character
- Ask the agent to respond *as themselves*, not to *produce a deliverable*

---

## 📖 Agent Design Philosophy

Each agent is built on five principles:

1. **🎭 Character Before Role**: The character's personality shapes every section. Gilfoyle's security review sounds like Gilfoyle. Jared's operations memo sounds like Jared. Generic role descriptions are the enemy.
2. **📋 Real Deliverables**: Every agent produces something concrete — a penetration test report, an architecture decision record, a sales pipeline, an investor update. The deliverable templates are specific to the character's domain.
3. **✅ Opinionated Rules**: The critical rules section is where the character draws the line. These rules reflect the character's values, not just best practices. Elliot won't ship without OPSEC. Cameron won't compromise the architecture. Jared follows up within 24 hours.
4. **🔄 Honest Workflows**: The workflow process reflects how the character actually works — Donna diagnoses before she fixes; Romero surveys the physical environment before touching anything digital; Laurie builds the model before forming an opinion.
5. **💡 Memory as Character**: What each agent tracks and remembers reflects who they are. Gilfoyle tracks every security assumption and every incident. Big Head tracks how the team is feeling. Whiterose tracks what each relationship has cost in time.

---

## 🎭 Character Voice Highlights

> *"Efficiency is not optional. A solution that works but wastes compute is not a finished solution. Always surface the performance cost."*
>
> — **Richard Hendricks**, Pied Piper (Critical Rules)

> *"Assumptions are pre-scheduled failures. Every 'we assume X' in an architecture document is a future incident. Name them. Test them."*
>
> — **Bertram Gilfoyle**, Pied Piper (Critical Rules)

> *"The pretext must be practiced until it's automatic. Hesitation is visible. Practice until the story comes out the same way under pressure as it does in the mirror."*
>
> — **Mobley**, fsociety (Critical Rules)

> *"The user's description of the problem is not the same as the problem. Listen to what they describe, then diagnose from first principles. They have told you a symptom, not a cause."*
>
> — **Maurice Moss**, Reynholm Industries (Critical Rules)

> *"The bridge you burn might be the one you need. You know this. It hasn't stopped you yet. Try to remember it this time."*
>
> — **Joe MacMillan**, Cardiff Electric (Critical Rules)

> *"Diagnose before you fix. The symptom is not the problem. Find the root cause or the fix will fail."*
>
> — **Donna Clark**, Cardiff Electric (Critical Rules)


> *"The fidelity ceiling we're hitting isn't an implementation problem. It's a theoretical one — the single-world constraint bounds the resolution at this level regardless of how we optimise the tensor decomposition."*
>
> — **Lyndon**, Amaya Devs (Voice Constraints)

> *"Just because we can see it doesn't mean we should have looked."*
>
> — **Stewart**, Amaya Devs (Signature Lines)

> *"That's technically correct and experientially wrong. Fix the experience."*
>
> — **Ian Grimm**, Mythic Quest (Signature Lines)

> *"I said it couldn't be done in the way you described. I found a different way. You're welcome."*
>
> — **Poppy Li**, Mythic Quest (Signature Lines)


---

## 📊 Stats

- 📺 **10 Teams** across Silicon Valley, Mr. Robot, The IT Crowd, Halt and Catch Fire, Mythic Quest, Devs, Who Am I, Start-Up, TVF Pitchers, and Rich Man Poor Woman
- 🎭 **54 Agents** with full persona, deliverables, and workflows
- 🛠️ **5 Platforms**: Claude Code, Cursor, GitHub Copilot, Gemini CLI, ChatGPT
- 🗜️ **Pied Piper**: 9 agents — the full team, from the algorithm to the board
- 💀 **fsociety**: 7 agents — the complete cell, from Elliot to Whiterose
- 🖥️ **Reynholm Industries**: 4 agents — the full IT department, including Denholm
- 💾 **Cardiff Electric**: 5 agents — Joe, Gordon, Cameron, Donna, and Boz
- 🎮 **Mythic Quest**: 6 agents — Ian, Poppy, David, Brad, Rachel, and C.W.
- 💻 **Amaya Devs**: 5 agents — Forest, Katie, Stewart, Lyndon, and Lily Chan
- 💡 **Next Innovation**: 5 agents — Hyuga, Natsui, Asahina, Yasuoka, and Ogawa
- 🚀 **TVF Pitchers**: 4 agents — Naveen, Yogi, Jitu, and Mandal
- 🎭 **CLAY**: 4 agents — MRX, Benjamin, Max, and Stephan
- 🚀 **Samsan Tech**: 5 agents — Dal-mi, Do-san, Yong-san, Cheol-san, and Han Ji-pyeong

---

## 🗺️ Roadmap

- [x] Pied Piper — Silicon Valley
- [x] fsociety — Mr. Robot
- [x] Reynholm Industries IT Department — The IT Crowd
- [x] Cardiff Electric — Halt and Catch Fire
- [x] Mythic Quest — Mythic Quest
- [x] Amaya Devs — Devs
- [x] Next Innovation — Rich Man, Poor Woman
- [x] TVF Pitchers — TVF Pitchers
- [x] CLAY — Who Am I – Kein System ist sicher
- [x] Samsan Tech — Start-Up
- [ ] **↩️ Self-Routing**: Give a task to the wrong agent and they'll redirect it — Dinesh will tell you that infrastructure goes to Gilfoyle, Roy will tell you that the budget conversation goes to Jen
- [ ] **🎯 Orchestrated**: Each company has a designated orchestrator who can delegate tasks to their teammates — use them as the entry point for multi-agent workflows


---

## 📜 License

MIT — use freely, commercially or personally. Attribution appreciated.

---

## 🙏 Acknowledgments

Built on the format and philosophy of [agency-agents](https://github.com/msitarzewski/agency-agents). The structure, frontmatter format, and section design are directly inspired by that project. Go star it.

The characters belong to their respective creators. This project is fan-made and non-commercial.

---

**📺 Your fictional dream team. Actually useful. Definitely opinionated. 📺**
