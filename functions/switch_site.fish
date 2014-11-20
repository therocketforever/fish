# Updates the config/site and config/site.rb (used in r12) files
# to contain whatever you pass in as the first argument
# Usage: switch_site att 
# would crate a config/site file with att as the contents
# AND would create a config/site.rb file with SITE='att' as the contents.
# switch_site att-stg would result in the site being set to "att"
# which is quite useful when you combine it with ss
function switch_site -d "Updates the config/site and config/site.rb"
  echo $argv[1] > config/site
  set -l SITE (echo $argv[1] | sed -e 's/[_-][a-zA-Z]*//')
  set -l QUOTE "'"
  echo SITE = $QUOTE$SITE$QUOTE > config/site.rb
  echo "Site is now $SITE"
end