# uncomment for autobuild

# Copy static site
CWD=`pwd`

# Clone Pages repositor
cd /tmp
git clone <'LIN TO REPO'> build
cd build # If not using master

bundle exec jekyll contentful

git config --global user.email ""
git config --global user.name ""

git add .
git commit -m "Automated Rebuild"
git push origin