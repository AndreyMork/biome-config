# @ayka/biome-config

A shared Biome configuration package that provides consistent code formatting and linting rules.

## Features

- Formatter disabled (use Prettier instead)
- Import organization enabled
- Linting enabled with customized rules:
  - Complexity rules for better code maintainability
  - Correctness checks for common mistakes
  - Performance optimizations
  - Style guidelines for consistent code
  - Suspicious code detection

## Installation

Install the package as a dev dependency using your preferred package manager:

```bash
npm install --save-dev @ayka/biome-config
```

```bash
pnpm add -D @ayka/biome-config
```

```bash
yarn add --dev @ayka/biome-config
```

Add the package to your Biome configuration file (`biome.json`):

```json
{
	"$schema": "./node_modules/@biomejs/biome/configuration_schema.json",
	"extends": ["@ayka/biome-config"],
	"vcs": {
		"enabled": true,
		"defaultBranch": "main",
		"clientKind": "git",
		"useIgnoreFile": false
	},
	"files": {
		"ignore": ["local", "dist", "coverage"]
	},
	"linter": {
		"ignore": ["dev"]
	}
}
```
