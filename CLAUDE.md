# Stellar guidance

This repo enables the official Stellar plugin (`stellar-dev`, from [stellar/stellar-dev-skill](https://github.com/stellar/stellar-dev-skill)) in `.claude/settings.json`.

**Required:** before you plan, answer, review or write anything that touches Stellar code, invoke the skill that matches that code and follow it. Do this even for small changes and even when the existing code seems to show the pattern: the skills hold current SDK APIs and pitfalls that model memory gets wrong. Only load the skills the task needs; contract work doesn't need the `dapp` skill.

| Working on | Skill |
|---|---|
| Soroban smart contracts (Rust, `soroban-sdk`) | `stellar-dev:smart-contracts` |
| Frontend, wallets (Freighter, Wallets Kit), JS `stellar-sdk` | `stellar-dev:dapp` |
| Reading chain data: RPC, Horizon, indexers | `stellar-dev:data` |
| Assets, trustlines, Stellar Asset Contract | `stellar-dev:assets` |
| SEPs, anchors, deposits and withdrawals | `stellar-dev:standards` |
| x402 / MPP agent payments | `stellar-dev:agentic-payments` |
| Zero-knowledge proof verification | `stellar-dev:zk-proofs` |
| Bridges and cross-chain messaging | `stellar-dev:cross-chain` |
