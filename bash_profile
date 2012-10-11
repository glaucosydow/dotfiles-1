export CLICOLOR=1
export LSCOLORS=ExFxCxDxBxegedabagacad
export LC_CTYPE=en_US.UTF-8

# Make sure is looking for GIT in the right place.
export PATH=/usr/local/bin/git:$PATH

# Manage hidden files.
show-hidden-files() {
	`defaults write com.apple.Finder AppleShowAllFiles $1`
	killall Finder
}

# Helper to generate a .swf file by an .html file.
swf-to-html() {
	sh ~/Code/Scripts/swf-to-html/swf-to-html.sh | xargs $@
}

# Flash logging tool.
flashtracer() {
	sh ~/Code/Scripts/flashtracer $@
}