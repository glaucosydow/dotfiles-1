user=`whoami`
path="/Users/$user/Library/Application Support/Sublime Text 2/Packages/User"
snippets="$path/st-snippets"

cp -r ./*sublime* "$path"

echo "Installing snippets..."

if [[ ! -d $snippets ]]; then
	cd "$path" && git clone git@github.com:rafaelrinaldi/st-snippets.git
else
	cd "$snippets" && git pull
fi