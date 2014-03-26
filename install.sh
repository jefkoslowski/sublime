#!/usr/bin/env bash
SUBLIME_CONFIG=~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/
SUBLIME_THEME=~/Library/Application\ Support/Sublime\ Text\ 3/Packages/Color\ Scheme\ -\ User/

cd "$(dirname "${BASH_SOURCE}")"
git pull origin master
function doIt() {
	rsync --exclude ".git/" --exclude ".DS_Store" --exclude "install.sh" \
		--exclude "README.md" --exclude Color\ Scheme\ -\ User/ -av --no-perms . "$SUBLIME_CONFIG"

	rsync --exclude ".git/" --exclude ".DS_Store" --exclude "install.sh" \
		--exclude "README.md" -av --no-perms Color\ Scheme\ -\ User/ "$SUBLIME_THEME"
}
if [ "$1" == "--force" -o "$1" == "-f" ]; then
	doIt
else
	read -p "This may overwrite existing files in your home directory. Are you sure? (y/n) " -n 1
	echo
	if [[ $REPLY =~ ^[Yy]$ ]]; then
		doIt
	fi
fi
unset doIt
