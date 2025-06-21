# @ayka/biome-config

<!-- Package -->

[npm-url]: https://www.npmjs.com/package/@ayka/biome-config
[npm-version-badge]: https://img.shields.io/npm/v/%40ayka%2Fbiome-config/latest
[npm-downloads-badge]: https://img.shields.io/npm/dm/%40ayka%2Fbiome-config
[npm-unpacked-size-badge]: https://img.shields.io/npm/unpacked-size/%40ayka%2Fbiome-config

<!-- Misc -->

[license-url]: https://opensource.org/license/MIT
[license-badge]: https://img.shields.io/npm/l/%40ayka%2Fbiome-config

<!-- Badges -->

[![NPM Version][npm-version-badge]][npm-url]
[![NPM License][license-badge]][license-url]
[![NPM Downloads][npm-downloads-badge]][npm-url]

[![NPM Unpacked Size][npm-unpacked-size-badge]][npm-url]

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
