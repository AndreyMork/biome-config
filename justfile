set dotenv-load := true

default:
    @just --list

# === Setup ===
install:
    pnpm install

clean:
    rm -rf ./node_modules/
    rm -rf ./package-lock.json
    rm -rf ./pnpm-lock.json
    rm -rf ./yarn.lock
    rm -rf ./yarn-error.log

# === Maintenance ===

format-check:
    npx prettier --check .

prepack:
    -@just format-check
    -@just publint

publint:
    npx publint

format:
    npx prettier --write .
    just --unstable --fmt
