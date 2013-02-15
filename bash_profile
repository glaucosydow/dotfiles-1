# Terminal input template.
PS1="[rafael] $ "

export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad
export LC_CTYPE=en_US.UTF-8

export PATH="/usr/local/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/bin/git:$PATH"

# OSX JavaScript binary.
alias jsc=/System/Library/Frameworks/JavaScriptCore.framework/Versions/A/Resources/jsc

# Manage hidden files.
show-hidden-files() {
	`defaults write com.apple.Finder AppleShowAllFiles $1`
	killall Finder
}

fla2img() {
	sh ~/Projects/personal/fla2img/fla2img.sh $@
}

# Helper to generate a .swf file by an .html file.
swf-to-html() {
	sh ~/Code/Scripts/swf-to-html/swf-to-html.sh | xargs $@
}

# Flash logging tool.
flashtracer() {
	sh ~/Code/Scripts/flashtracer $@
}
