# Environment Setup

## Nerd Fornt

You can install font from [Nerd font](https://www.nerdfonts.com/) to show icons on terminal.

## System Packages

| Package | Optional |
| ------- | -------- |
| bash    |          |
| gcc     |          |
| make    |          |
| git     |          |
| lazygit |          |
| rp      |          |
| shfmt   |          |
| node    |          |
| java    |          |
| maven   |          |
| python  |          |
| jdtls   |          |

# Git

## LazyGit

Set `$HOME/.config/lazygit/config.yml` as following for return and quit command from Lazygit.

```yaml
keybinding:
  universal:
    quit: "<c-q>"
    return: "<c-r>"
```

# Search (grep)

## Live Grep

Telescope will search binary for live grep in the following order.

1. rg (ripgrep)
2. git grep (git)
3. grep

# LSP

| Language | Tool               | Installation                                                                       |
| -------- | ------------------ | ---------------------------------------------------------------------------------- |
| Java     | jdtls              | [Installation guide](https://github.com/eclipse-jdtls/eclipse.jdt.ls#installation) |
| Java DAP | java-debug-adapter | `:MasonInstall java-debug-adapter`                                                 |
| Python   | basedpyright       | `:MasonInstall basedpyright`                                                       |

# Formatter

| Language   | Formatter | Installation                                       |
| ---------- | --------- | -------------------------------------------------- |
| TypeScript | prettier  | Optional global install: `npm install -g prettier` |
| Shell      | shfmt     | `:MasonInstall shfmt`                              |
| Lua        | stylua    | `:MasonInstall stylua`                             |
| Python     | ruff      | `:MasonInstall ruff`                               |
