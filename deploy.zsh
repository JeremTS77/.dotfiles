#!/bin/zsh
/bin/echo -n "use server's prompt style ? [y/N] " && /usr/bin/read PROMPT
/bin/echo -n "use battery level display (MacOs X only) ? [Y/n] " && /usr/bin/read BATTERY
/bin/echo -n "use git display ? [Y/n] " && /usr/bin/read GITMODE

#start basic config
/bin/cp -v ~/.dotfiles/.zshrc ~/.zshrc
/bin/cp -vr ~/.dotfiles/.vim ~/.vim
/bin/cp -v ~/.dotfiles/.vimrc ~/.vimrc
#end basic config

if [ "$PROMPT:l" != 'o' ] &&  [ "$PROMPT:l" != 'oui' ] && [ "$PROMPT:l" != 'y' ] && [ "$PROMPT:l" != 'yes' ] ; then
	/bin/cp -v ~/.dotfiles/config/prompt_battery_git.zsh ~/.dotfiles/config/prompt.zsh
elif [ "$BATTERY:l" != 'non' ] && [ "$BATTERY:l" != 'n' ] && [ "$BATTERY:l" != 'no' ] ; then
	echo "Not implemented"
fi
if [ "$GITMODE:l" != 'non' ] && [ "$GITMODE:l" != 'n' ] && [ "$GITMODE:l" != 'no' ] ; then
	echo "Not implemented"
fi
