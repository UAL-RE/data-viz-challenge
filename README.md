# Data Viz Challenge

This is the code repository for the University of Arizona Libraries' Data Visualization Challenge web page at [UAL-RE.github.io/data-viz-challenge](https://UAL-RE.github.io/data-viz-challenge).

### Development notes
These are largely taken from the GitHub help article [Setting up your GitHub Pages site locally with Jekyll](https://help.github.com/en/articles/setting-up-your-github-pages-site-locally-with-jekyll). Instructions below are for Linux, but the GitHub page has information for other operating systems.

1. For local development, will need to have Ruby version 2.1.0 or higher. Check this in a terminal via:
```
ruby --version
```
2. Install Bundler
```
gem install bundler
```
3. Fork this repo, clone it locally, then navigate to the repo's root directory (i.e. "arizona").
4. _Don't_ install jekyll via `sudo apt-get...`. Instead, install it through the Gemfile. Run this in a Terminal:
```
echo "source 'https://rubygems.org'" >> Gemfile
echo "gem 'github-pages', group: :jekyll_plugins" >> Gemfile
```
5. Do a reality check to make sure the Gemfile has these two lines (via `cat Gemfile`):
    source 'https://rubygems.org'
    gem 'github-pages', group: :jekyll_plugins
6. Install Jekyll using Bundler. Note this should be run in the root directory of the repository, where the Gemfile is located (i.e. "data-viz-challenge"):
```
bundle install
```
7. It also wouldn't hurt to add local development Jekyll debris to .gitignore (if this has not been done already)
```
echo "Gemfile" >> .gitignore
echo "Gemfile.lock" >> .gitignore
echo "_site" >> .gitignore
echo ".jekyll-cache" >> .gitignore
```
8. Build locally
```
bundle exec jekyll serve
```