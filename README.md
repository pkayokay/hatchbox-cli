# hatchbox-cli

A CLI for managing and connecting to [Hatchbox](https://www.hatchbox.io/)-deployed Rails apps over SSH.

## Install

```
curl -fsSL https://raw.githubusercontent.com/pkayokay/hatchbox-cli/main/install.sh | bash
```

## Uninstall

```
sudo rm /usr/local/bin/hatchbox
```

## Usage

### Add an app

```
hatchbox apps:add myapp 123.45.67.8
hatchbox apps:add myapp my-ssh-alias
hatchbox apps:add myapp deploy@123.45.67.8
```

The host can be an IP address, a hostname, or an SSH config alias. For IPs and hostnames (anything with a `.`), `deploy@` is prepended automatically unless you specify a user.

### List apps

```
hatchbox apps
```

### Update or remove an app

```
hatchbox apps:update myapp 99.88.77.66
hatchbox apps:remove myapp
```

### Rails console

```
hatchbox run console -a myapp
```

### Shell in current release

```
hatchbox run shell -a myapp
```

### Tail logs

```
hatchbox logs server -a myapp
hatchbox logs solid_queue -a myapp
```

The process name maps to a systemd unit: `<app>-<process>`.

### Plain SSH

```
hatchbox ssh -a myapp
```

## Config

Apps are stored in `~/.config/hatchbox/apps` as simple `name=host` lines. You can edit this file directly if you prefer.
