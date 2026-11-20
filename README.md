<h1 align="center">homebrew-tap</h1>

<p align="center">
    <strong>Custom Homebrew tap for b1sted's projects</strong>
</p>
<p align="center">
    <a href="#license">
        <img src="https://img.shields.io/badge/License-MIT-yellow?style=flat-square" alt="License" />
    </a>
</p>
<p align="center">
    <a href="#usage">Usage</a> •
    <a href="#available-packages">Available Packages</a> •
    <a href="#update">Update</a> •
    <a href="#uninstall">Uninstall</a> •
    <a href="#license">License</a>
</p>

## Usage

Install directly in one command:

```bash
brew install b1sted/tap/<package-name>
```

Or add the tap first:

```bash
brew tap b1sted/tap
brew install <package-name>
```

## Available Packages

| Package | Description | Command |
| :--- | :--- | :--- |
| [**`textfetch`**](https://github.com/b1sted/textfetch) | Another fetch tool for UNIX systems, written just for fun. | `brew install b1sted/tap/textfetch` |
| [**`vlsx`**](https://github.com/b1sted/vlsx) | A lightweight terminal toolkit in C for network engineers to calculate VLSM, multicast MACs, SLA metrics, and DHCP timers. | `brew install b1sted/tap/vlsx` |

## Update

```bash
brew update
brew upgrade <package-name>
```

## Uninstall

Remove a package:

```bash
brew uninstall <package-name>
```

Remove the tap completely:

```bash
brew untap b1sted/tap
```

## License

The Homebrew formulas in this repository are distributed under the [MIT License](./LICENSE).

### Applications License

Please note that the applications installed via this tap are distributed under their own respective open-source licenses. Check the source code repository of each project for details.
