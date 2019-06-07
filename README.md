# zoom cookbook

[![License](https://img.shields.io/badge/License-Apache%202.0-green.svg)](https://opensource.org/licenses/Apache-2.0)

This cookbook installs/configures [Zoom](https://zoom.us/) Client . It defaults to installing latest version of Zoom Client

## Maintainers

This cookbook is maintained by Nghiem Ba Hieu.

## Usage

Include `default` recipe wherever you would like Zoom Client installed in a run_list (`recipe[zoom]`) or in a cookbook (`include_recipe 'zoom'`). By default, this cookbook installs the latest version of Zoom Client. To specify your own version, update `['zoom']['source']` and its checksum `['zoom']['checksum']` accordingly.

## Requirements

Chef 13.0+

### Platforms

- Windows

### Cookbooks

## Attributes

See `attributes/default.rb` for default values.

- `node['zoom']['source']` - Source of Zoom Client MSI Installer package
- `node['zoom']['checksum']` - Zoom Client MSI Installer package checksum
- `node['zoom']['options']['autoupdate']` - optional, set Zoom to check updates automatically
- `node['zoom']['options']['autostart']` - optional, set Zoom to start automatically with Windows, default
- `node['zoom']['options']['silent_autostart']` - optional, set Zoom to start silently automatically with Windows
- `node['zoom']['options']['no_desktop_shortcut']` - optional, will Zoom Installer create desktop shortcut or not?
- `node['zoom']['options']['sso_url']` - optional, configure SSO URL if using company credentials. For example, `https://example.zoom.us`

## Recipes

### default

To installs/configures Zoom Client

## References

### Zoom Deployment Guide

[Mass Installation and Configuration for Windows](https://support.zoom.us/hc/en-us/articles/201362163-Mass-Installation-and-Configuration-for-Windows)
