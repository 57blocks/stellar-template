# Stellar Project Template

Minimal starter for any Stellar project. It only sets up Claude Code: the official Stellar plugin installs automatically, and `CLAUDE.md` tells Claude which Stellar skill to use for which code. Generate the project code with the official tools.

## Use

1. Create a repo from this template, with **Use this template** on GitHub or:

   ```bash
   gh repo create <org>/<project-name> --template 57blocks/stellar-template --private --clone
   ```

2. Generate the code inside it, e.g. a contract workspace:

   ```bash
   stellar contract init .
   ```

   It keeps this repo's `README.md` and `CLAUDE.md`, and adds its own `.gitignore` and `AGENTS.md` (build, test and deploy notes for coding agents). For a frontend, use your framework of choice or [Scaffold Stellar](https://stellarscaffold.org).

3. Open the repo in Claude Code and accept the folder trust prompt. The official `stellar-dev` plugin then installs and enables itself for this repo.

## Files

| File | Purpose |
|---|---|
| `.claude/settings.json` | Registers the official [stellar/stellar-dev-skill](https://github.com/stellar/stellar-dev-skill) marketplace and enables its `stellar-dev` plugin for this repo |
| `CLAUDE.md` | Tells Claude which `stellar-dev` skill to invoke for which kind of code |
