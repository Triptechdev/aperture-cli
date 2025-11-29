# Aperture CLI

CLI tool for deploying web apps as native applications.

**Current Version:** 0.1.0

## Installation

### Homebrew (macOS/Linux)

```bash
# Add the tap
brew tap triptechdev/aperture-cli

# Install
brew install aperture

# Verify installation
aperture --version
```

**Update:**
```bash
brew upgrade aperture
```

### Direct Download

Download the latest release for your platform:

#### macOS

**Universal Binary (Apple Silicon & Intel):**
```bash
curl -L https://github.com/triptechdev/aperture-cli/releases/latest/download/aperture-universal-apple-darwin.tar.gz | tar xz
sudo mv aperture-universal /usr/local/bin/aperture
```

#### Linux

**x86_64:**
```bash
curl -L https://github.com/triptechdev/aperture-cli/releases/latest/download/aperture-x86_64-unknown-linux-gnu.tar.gz | tar xz
sudo mv aperture /usr/local/bin/
```

**ARM64:**
```bash
curl -L https://github.com/triptechdev/aperture-cli/releases/latest/download/aperture-aarch64-unknown-linux-gnu.tar.gz | tar xz
sudo mv aperture /usr/local/bin/
```

### Verify Installation

After installation via any method:

```bash
aperture --version
```

## Quick Start

```bash
# Login to your Aperture account
aperture auth login

# View available commands
aperture --help

# Deploy a web app
aperture deploy
```

## Documentation

For full documentation, visit [triptech.dev/aperture/docs](https://triptech.dev/aperture/docs)

## Shell Completions

If installed via Homebrew, shell completions are automatically installed. For manual installations:

```bash
# Bash
aperture completions bash > /usr/local/etc/bash_completion.d/aperture

# Zsh
aperture completions zsh > /usr/local/share/zsh/site-functions/_aperture

# Fish
aperture completions fish > ~/.config/fish/completions/aperture.fish
```

## Supported Platforms

- **macOS:** Universal binary supporting both Apple Silicon and Intel
- **Linux:** x86_64 and ARM64

## Release Verification

All releases include SHA256 checksums. To verify a download:

```bash
# Download the checksums file
curl -LO https://github.com/triptechdev/aperture-cli/releases/latest/download/checksums.txt

# Verify (macOS)
shasum -a 256 -c checksums.txt

# Verify (Linux)
sha256sum -c checksums.txt
```

## Support

- **Issues:** [GitHub Issues](https://github.com/triptechdev/aperture-cli/issues)
- **Documentation:** [triptech.dev/aperture](https://triptech.dev/aperture)

## Updates

The Aperture CLI follows [Semantic Versioning](https://semver.org/). We support the last 3 minor versions.

To check for updates:
```bash
# Homebrew
brew update && brew outdated aperture

# Manual installation - check releases page
# https://github.com/triptechdev/aperture-cli/releases
```
