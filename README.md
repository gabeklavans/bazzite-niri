# bazzite-niri

A custom image based on Bazzite with the intention to keep as close to Bazzite as possible but with [niri](https://github.com/YaLTeR/niri) as the window manager and several pre-installed programs for enabling the expected desktop environment experience.

## How I use this

I don't use my laptop often, but when I do, it's running bazzite-niri. I've tried all kinds of tweaks to KDE and Gnome to make using my laptop feel effortless. However, the scrolling WM combined with excellent focus handling and default keybinds makes niri the best-feeling way to use my laptop.

## Wallpaper

The built-in systemd service for starting `swaybg` expects to find an image at ~/Pictures/wallpaper.jpg

You should be able to override that path with `systemctl --user edit swaybg`.
