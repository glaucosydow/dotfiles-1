user=`whoami`
path="/Users/$user/Library/Application Support/Sublime Text 3"
snippets="$path/Packages/User/st-snippets"
soda="$path/Packages/Theme - Soda"

cp -r ./*sublime* ./colour-schemes "$path/Packages/User"

echo "Installing snippets..."

if [[ ! -d $snippets ]]; then
	cd "$path/Packages/User" && git clone git@github.com:rafaelrinaldi/st-snippets.git
else
	cd "$snippets" && git pull
fi
echo "Creating 'subl' symlink..."

sudo ln -s "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" /usr/local/bin/subl

echo "Installing Soda theme..."

if [[ ! -d $soda  ]]; then
	cd "$path/Packages" && git clone git@github.com:buymeasoda/soda-theme.git "Theme - Soda"
fi
