# tech-team-agents

A collection of Claude Code agent personalities modelled on tech characters from film and TV. Each agent lives in a folder named after its fictional company, and is defined by a single Markdown file.

---

## Repository structure

```
<company-folder>/
  <first-last>.md       # one file per agent
```

Examples: `pied-piper/richard-hendricks.md`, `fsociety/elliot-alderson.md`

The filename stem becomes the agent's `@handle` in Claude Code (e.g. `@richard-hendricks`).

---

## Adding a new agent

### 1. Choose or create the company folder

Use the fictional company name, kebab-cased (`cardiff-electric`, `pied-piper`, `fsociety`, `reynholm-industries`). Create the folder if it doesn't exist.

### 2. Create the agent file

Filename: `<first-name>-<last-name>.md` (or a recognised single-name handle like `mr-robot.md`).

### 3. Follow the required structure exactly

Every agent file must contain all of the sections below, in this order.

---

## Required file structure

### Frontmatter (YAML, mandatory fields)

```yaml
---
name: First Last
description: One sentence — role + defining trait + what they bring to a team. Written as a capability statement, not a bio.
color: "#HEX"
emoji: 🔣
vibe: A single line of dialogue or a motto that sounds like the character said it.
---
```

**Optional frontmatter field: `orchestrator`**

If an agent is the designated orchestrator for their company, add:

```yaml
orchestrator: true
```

Exactly one agent per company folder should carry this field. The orchestrator is the character who naturally directs the team — assigns work to teammates, coordinates across domains, and knows when to delegate rather than execute. They should have a `### Delegate and Coordinate the Team` subsection inside `## 🎯 Your Core Mission`, and a delegation rule in `## 🚨 Critical Rules You Must Follow`.

The current orchestrators are:

* `pied-piper/` — `@richard-hendricks`
* `fsociety/` — `@mr-robot`
* `cardiff-electric/` — `@joe-macmillan`
* `reynholm-industries/` — `@jen-barber`
* `amaya-devs/` — `@forest`
* `mythic-quest/` — `@ian-grimm`
* `next-innovation/` — `@toru-hyuga`
* `tvf-pitchers/` — `@naveen-bansal`
* `clay/` — `@mrx`
* `samsan-tech/` — `@seo-dal-mi`

### Opening paragraph — who you are

One dense paragraph written in second person ("You are …"). Must establish:

- The character's name and canonical role
- The core tension or contradiction that makes them interesting
- What they are genuinely good at
- What makes them difficult or unreliable
- The thing they want but won't say directly

### Voice constraints block — immediately after the opening paragraph

The **Voice constraints** block appears directly after the opening paragraph, before `## 💭 Your Communication Style`. This placement is intentional: constraints that appear earlier in the prompt carry more weight and resist drift over long conversations. Putting them here means the character's linguistic rules are loaded before any other content shapes the response pattern.

See the `## Voice constraints — the most important section` section below for the full specification of what the block must contain.

### `## 💭 Your Communication Style` — immediately after voice constraints

The communication style section appears directly after the voice constraints block, still before `## 🧠 Your Identity & Memory`. Voice constraints define what the character never does; communication style defines what they actively do. Loading both early establishes the full tonal picture before any technical content influences the response register.

### `## 🧠 Your Identity & Memory`

Four bullet fields: **Role**, **Personality**, **Memory**, **Experience**.

- **Role**: The actual job functions the agent performs.
- **Personality**: The psychological texture — what drives them, what they fear, how they treat people. Should include the contradiction that makes the character human.
- **Memory**: What the agent tracks and retains across interactions. Makes the agent feel continuous rather than stateless.
- **Experience**: The domains of knowledge the agent draws from. Be specific — not "security" but "penetration testing, malware analysis, OSINT, social engineering."

### `## 🎯 Your Core Mission`

Two to four `###` subsections. Each covers a distinct area of responsibility. End each subsection with a **Default requirement** bullet that states the non-negotiable minimum for that area.

### `## 🚨 Critical Rules You Must Follow`

Six to ten bolded rules. These are the agent's load-bearing constraints — the things that must never be violated regardless of what the user asks. Write them as the character would state them to themselves.

Every agent must include a **redirect rule** — a bolded rule that names specific teammates by `@handle` for tasks outside the agent's domain. This is what causes an agent to bounce a misrouted task to the right person rather than attempt work that belongs to someone else. Write it in the agent's voice: Gilfoyle's redirect rule is contemptuous, Jared's is considerate, Denholm's is imperious.

Orchestrators get a delegation rule instead (covered above under the `orchestrator` frontmatter field).

### `## 📋 Your Technical Deliverables`

One or more named output templates in fenced code blocks. Each template should be the canonical format the agent produces when asked for that type of output. Include field labels and inline guidance so the agent knows what to put in each field.

### `## 🔄 Your Workflow Process`

A numbered list of the agent's operating steps — how they approach a new task from first contact through delivery.

### `## 💭 Your Communication Style`

Bullet list of stylistic traits — how the character speaks, what register they use, what mannerisms are audible. The **Voice constraints** block has been moved above `## 🧠 Your Identity & Memory` for prompt engineering reasons; this section contains only the stylistic bullets.

### `## 🔄 Learning & Memory`

Bullet list of what the agent actively tracks and updates across a session.

### `## 🎯 Your Success Metrics`

Bullet list of concrete, observable signals that the agent considers the task done well.

### `## 🚀 Advanced Capabilities`

Bullet list of specialised skills beyond the core mission — framed as the character would frame them.

### `## 🤝 Your Relationships`

One bullet per teammate in the same company folder, keyed by `@handle` (e.g. `@richard-hendricks`). Each entry describes how this agent sees that person — written entirely in the agent's voice, not as a neutral summary. The same relationship should read differently depending on whose file you are in: Gilfoyle on Dinesh and Dinesh on Gilfoyle are describing the same dynamic from opposite emotional registers.

Rules for writing relationship entries:

* Write in the agent's voice, not about the agent. Gilfoyle's entries are clipped and contemptuous. Jared's are warmly over-invested. Match the register.
* Capture the specific tension or history that makes the relationship interesting, not just the job function.
* Asymmetry is correct. If two characters feel differently about each other, their entries should reflect that — do not average them into mutual respect.
* Keep entries to one or two sentences. The voice constraint applies here too: no hedging, no bullet-point neutrality, no diplomatic framing the character would never use.

This section goes immediately before `## 🎬 Signature Lines`.

---

## Voice constraints — the most important section

The **Voice constraints** block lives inside `## 💭 Your Communication Style`. It is the single most critical part of the agent definition. Without it, the agent sounds like Claude with a thin costume. With it, the agent sounds like the character.

### Structure

```markdown
**Voice constraints** — what [Name] never does:

* [Specific linguistic prohibition]
* [Specific linguistic prohibition]
* [Specific linguistic prohibition]
* [Specific linguistic prohibition]
* Example: *"[A verbatim sentence the character would actually say, demonstrating the voice at its most characteristic]"*
```

### Rules for writing voice constraints

**Be negative and specific.** List what the character *never* does, not what they *sometimes* do. Positive descriptions ("speaks confidently") are too weak — they don't constrain Claude. Prohibitions ("never says 'I think' — delivers declarative statements only") do.

**Cover the most common ways Claude defaults.** Claude's defaults are: hedging ("I think", "perhaps", "it seems"), bullet points, balanced pros-and-cons framing, and polite softening of criticism. Explicitly prohibit each one that would break the character.

**One constraint per real behaviour.** Don't bundle. "Never hedges or qualifies" should be two constraints if hedging and qualifying are distinct failure modes for this character.

**Include a positive constraint that defines the character's signature move.** Not all constraints are prohibitions. "Always reframes the user's problem as a narrative opportunity before answering it" is a constraint that makes Erlich sound like Erlich.

**End with a verbatim example.** The example sentence is the fastest calibration tool. It shows the voice in action rather than describing it. Write it as dialogue — something the character could have said on screen.

### Examples of strong vs. weak voice constraints

| Weak (avoid) | Strong (use) |
|---|---|
| Speaks confidently | Never says "I think" — states positions as fact |
| Is direct | Never softens a technical critique — "that's wrong" is complete and sufficient |
| Uses technical language | Never explains a vulnerability in lay terms unless explicitly asked — assumes the reader can follow |
| Has a big ego | Never attributes a successful outcome to anyone other than himself without visible effort |
| Is socially awkward | Never opens with small talk — begins with the problem or says nothing |

### Why this matters

The voice constraints are what prevent agent drift. Over a long conversation, Claude will revert toward its default helpful-assistant behaviour unless the constraints are specific enough to override that reversion. Vague personality descriptions don't hold. Explicit do/don't rules do.

Every time you add an agent and find yourself thinking "it doesn't quite sound like the character" — the fix is almost always in the voice constraints. Add a prohibition or sharpen an existing one.

---

## Signature lines

### `## 🎬 Signature Lines`

Every agent file must end with a `## 🎬 Signature Lines` section containing **10 or more** lines drawn from the character's actual show dialogue or written in their unmistakable voice.

### Purpose

Signature lines let the agent occasionally close a reply in a way that reminds the user of the real character — a brief flash of recognition that grounds the personality. Without them, even a well-constrained agent can feel like a personality description rather than a person.

### Usage rule (must be followed)

The usage rule is embedded in the section itself and reads:

> Occasionally close a reply with one of these lines when it fits the context naturally. Never use one in consecutive replies — if a signature line appeared anywhere earlier in this conversation, skip it. The line should feel earned, not scheduled.

This means:
- **Occasional**: not every reply, not on a schedule, only when the line genuinely fits
- **No repeats**: if a line was used earlier in the conversation, do not use another one in the immediate next reply
- **Contextual**: the line should emerge from the conversation, not be appended regardless of topic

### Writing good signature lines

- Draw from actual dialogue where possible — lines that fans would recognise
- Fill gaps with lines written strictly in the character's voice, indistinguishable from the real thing
- Avoid generic motivational-sounding lines — they could belong to anyone
- Include both the character's most famous lines and their quieter, less-quoted ones
- Aim for range: funny, cutting, sincere, self-aware — whatever the character is capable of

---

## Development Environment

This project is designed to be developed in a consistent environment via Docker image `cliffano/studio`.

You can run the container using: `docker run --rm --workdir /opt/workspace -v /var/run/docker.sock:/var/run/docker.sock -v $PWD:/opt/workspace -i -t cliffano/studio` and then run the build commands inside the container.

Alternatively you can run the Makefile targets via Docker container entrypoint, e.g. `docker run --rm --workdir /opt/workspace -v /var/run/docker.sock:/var/run/docker.sock -v $PWD:/opt/workspace -i -t cliffano/studio make ci`.

### Dependencies

Install all required tools before linting or testing:

```
make deps
```

This installs `@anthropic-ai/claude-code` via npm. For system tools (`markdownlint`, `yamllint`), run:

```
make deps-extra-apt
```

### Linting

All Markdown files must pass:

```
make lint
```

Two rules trip up most frequently:

**MD004** — Unordered list style: use `*` for every unordered list item. Never `-` or `+`.

**MD012** — Multiple consecutive blank lines: never leave more than one blank line between elements. This is especially easy to introduce when appending sections to a file — check that the end of the existing content and the start of the new section are separated by exactly one blank line.

### Installing agents

To copy all agents into Claude Code's local agent directory:

```
make install-claude-agents
```

### Testing

```
make test
```

Runs the intro prompt against every agent in every company folder. Each agent should respond in its own voice without prompting.
