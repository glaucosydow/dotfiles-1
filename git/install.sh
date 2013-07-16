# Adding ignore to root.
cat ./ignore > ~/.gitignore_global
git config --global core.excludesfile ~/.gitignore_global

# Adding attributes to root.
cat ./attributes > ~/.gitattributes

# User settings.
git config --global user.name "Rafael Rinaldi"
git config --global user.email rafael.rinaldi@gmail.com
git config --global core.editor "subl -n -w"
git config --global color.ui true

# Setting up opediff as default merge tool
/usr/bin/xcode-select -switch /Applications/Xcode.app/Contents/Developer/
mv ./git-diff.sh ~/bin/git-diff.sh
chmod u+x ~/bin/git-diff.sh
git config --global diff.external ~/bin/git-diff.sh