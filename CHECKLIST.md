# Checklist for installing a dev machine on Mac

A useful checklist of things to do when first setting up a Mac for developing code.

## Essentials

* [XCode](https://developer.apple.com/xcode/)
* [XCode Command Line Tools](https://developer.apple.com/download/more/)
* [Brew](https://brew.sh/)
* [Docker](https://docs.docker.com/docker-for-mac/install/)

## Programming languages

I tend to code in Python & Node, so:

    brew install python
    brew install node

## Text editors & terminals

* [VS Code](https://code.visualstudio.com/download), or another text editor such as [Sublime](https://www.sublimetext.com/3) or [Atom](https://atom.io)
* [iTerm2](https://www.iterm2.com/downloads.html)
  * iTerm2's [shell integration](https://www.iterm2.com/documentation-shell-integration.html)
* [Fork](https://git-fork.com/), as I am a coward who hates using the command line for git

## Databases

One or more of the following:

* [Postgres](https://www.postgresql.org/download/macosx/) plus a client such as [Postico](https://eggerapps.at/postico/)
* [MySQL](https://dev.mysql.com/downloads/mysql/) plus a client such as [Sequel Pro](https://www.sequelpro.com/)
* Sqlite doesn't need a server; a client such as [DB Browser](https://sqlitebrowser.org) is useful

## Prototyping & design

* [Invision](https://www.invisionapp.com)
* [Sketch](https://www.sketch.com)
* [Adobe XD](https://www.adobe.com/uk/products/xd.html)

## Browsers

* [Chrome](https://www.google.com/chrome/)
* [Firefox](https://www.mozilla.org/en-GB/firefox/new/)
* Windows emulator using [VirtualBox](https://www.virtualbox.org/wiki/Downloads) and the [modern.ie VMs](https://developer.microsoft.com/en-us/microsoft-edge/tools/vms/)

## Other tools

* [Cyberduck](https://cyberduck.io/), for S3/FTP
* [Slack](https://slack.com/intl/en-gb/downloads/mac), for getting distracted
* [Spotify](https://www.spotify.com/uk/download/other/) (or an alternative music provider of choice)

## Command-line tools

* [ack](https://beyondgrep.com) (a better version of grep)
* [htop](https://hisham.hm/htop/) (a better version of top)
* [fd](https://github.com/sharkdp/fd) (a better version of find)

## Make things look nicer

* A nice fixed-width font such as [Hasklig](https://github.com/i-tu/Hasklig) or [Cascadia Code](https://github.com/microsoft/cascadia-code). Remember to turn on ligatures!
* A better theme for iTerm2 - I quite like [Argonaut](https://github.com/effkay/iTerm-argonaut)
* A better theme for VS Code - I quite like [One Monokai](https://marketplace.visualstudio.com/items?itemName=azemoh.one-monokai)

## Get set up

* Log into Github and [generate an SSH key](https://help.github.com/en/articles/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent)
