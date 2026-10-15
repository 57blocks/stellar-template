#!/usr/bin/env bash
# Builds the contracts and deploys hello-world to testnet.
# Requires the Stellar CLI: https://developers.stellar.org/docs/tools/cli
#
# Usage: scripts/deploy-testnet.sh        (SOURCE=<identity> NETWORK=<network> to override)
set -euo pipefail

SOURCE="${SOURCE:-alice}"
NETWORK="${NETWORK:-testnet}"
cd "$(dirname "$0")/.."

stellar contract build

# Create and fund the identity on first use (friendbot funding works on testnet only)
stellar keys address "$SOURCE" >/dev/null 2>&1 || stellar keys generate "$SOURCE" --network "$NETWORK" --fund

stellar contract deploy \
  --wasm target/wasm32v1-none/release/hello_world.wasm \
  --source-account "$SOURCE" \
  --network "$NETWORK"
