user=`whoami`
path="/Users/$user/Library/Application Support/Sublime Text 2"
snippets="$path/Packages/User/st-snippets"
soda="$path/Packages/Theme - Soda"

cp -r ./*sublime* "$path"

echo "Installing snippets..."

if [[ ! -d $snippets ]]; then
	cd "$path/Packages/User" && git clone git@github.com:rafaelrinaldi/st-snippets.git
else
	cd "$snippets" && git pull
fi

echo "Installing Soda theme..."

if [[ ! -d $soda  ]]; then
	cd "$path/Packages" && git clone git@github.com:buymeasoda/soda-theme.git "Theme - Soda"
fi
