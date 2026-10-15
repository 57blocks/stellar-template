# Stellar Project Template

57blocks starter for Stellar smart contract projects: a Soroban contract workspace with tests, a testnet deploy script, and Claude Code set up with the team's Stellar plugin.

## Create a project from this template

On GitHub, click **Use this template**, or from a terminal:

```bash
gh repo create <org>/<project-name> --template 57blocks/stellar-template --private --clone
```

Then update the project description in `README.md` and rename `contracts/hello-world` to your first contract.

## What's included

| Path | Purpose |
|---|---|
| `contracts/hello-world/` | Example contract and unit test |
| `Cargo.toml` | Workspace, `soroban-sdk` version, release profile for small WASM |
| `rust-toolchain.toml` | Picks a recent stable Rust and the `wasm32v1-none` target (soroban-sdk 29 needs Rust 1.91+) |
| `scripts/deploy-testnet.sh` | Builds and deploys to testnet, creating and funding an identity on first run |
| `CLAUDE.md` | Empty on purpose: add your project's own instructions for Claude Code, or generate a first draft with `/init` |
| `.claude/settings.json` | Enables the team's `stellar` Claude Code plugin for everyone who opens the repo |

## Commands

```bash
cargo test                    # run contract tests (also writes test_snapshots/; commit them so diffs show behavior changes)
stellar contract build        # build optimized WASM into target/wasm32v1-none/release/
scripts/deploy-testnet.sh     # build and deploy to testnet
```

## Claude Code

The first time you open the project in Claude Code, accept the folder trust prompt. The `stellar` plugin from [57blocks/stellar-claude-plugins](https://github.com/57blocks/stellar-claude-plugins) then installs and enables itself for this repo, and Claude reads the Stellar contract guide before working on the contracts.

For current docs and versions, also install the optional Raven plugin and sign in once:

```bash
claude plugin install stellar-raven@57blocks-stellar   # then run /mcp in Claude Code and sign in
```
