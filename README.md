# Neovim config directory

## Introduction

Here are the config files for my working Neovim setup.
I mostly use Neovim for a) editing system and config files, and b) interactive data analysis using R and Quarto, so the setup here is geared towards those purposes.
The config started with [kickstart.nvim](https://github.com/nvim-lua/kickstart.nvim/) (more specifically, [kickstart-modular.nvim](https://github.com/dam9000/kickstart-modular.nvim)), but has branched from there to suit my needs.
I'd recommend others interested in starting out with Neovim follow that path too, but you might find something interesting by exploring my setup, particularly if you want an interactive R workflow :smile:.

## Installation

#### 1. Install Neovim

Download the latest ['stable'](https://github.com/neovim/neovim/releases/tag/stable) release of Neovim.

> Note: the current config requires Neovim version 0.11 or higher, as it makes use of [some new features](https://gpanders.com/blog/whats-new-in-neovim-0-11/) introduced in that update
> (most significantly the overhaul to LSP setup).
> If for some reason you want to stick with Neovim v0.10, the last commit that should work with that version is [0ba3c6fe](https://codeberg.org/pjphd/neovim_config/src/commit/0ba3c6fe7ddaa755b17406d5edb107e72199db62).

#### 2. Prepare

[Backup](https://github.com/dam9000/kickstart-modular.nvim?tab=readme-ov-file#faq) your previous configuration (if any exists).

> Note: an alternative would be to clone this repo into a different directory other than the one specified in Step 3 below, and start Neovim with [`NVIM_APPNAME`](https://neovim.io/doc/user/starting.html#%24NVIM_APPNAME) pointing to this configuration directory instead.

#### 3. Clone this repo

Linux and Mac:

```sh
git clone https://codeberg.org/pjphd/neovim_config.git "${XDG_CONFIG_HOME:-$HOME/.config}"/nvim
```

Windows:

If you're using `cmd.exe`:

```
git clone https://codeberg.org/pjphd/neovim_config.git %userprofile%\AppData\Local\nvim\
```

If you're using `powershell.exe`

```
git clone https://codeberg.org/pjphd/neovim_config.git $env:USERPROFILE\AppData\Local\nvim\
```

#### 4. Post Installation

Start Neovim

```sh
nvim
```

That's it!
Lazy will install all the plugins you have.
Use `:Lazy` to view current plugin status. Hit `q` to close the window.

### Getting help

A helpful video for getting started and understanding the kickstarter setup: [The Only Video You Need to Get Started with Neovim](https://youtu.be/m8C0Cq9Uv9o)

Any questions specific to my setup, let me know.

