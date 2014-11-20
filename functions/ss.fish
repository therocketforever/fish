# Switches between site, db, and rvm gemset. Creates gemset if needed.
# Usage: sso (site_name_including_any_-stg_or_-prod_ending)
# Depends on `switch_db` and `switch_site`.q
function ss -d "Switches between site, db, and rvm gemset. Creates gemset if needed."
  if [ (count $argv) < 0 ]
    set -l SHORT_NAME ( echo $argv[1] | sed "s/[_-][a-zA-Z].*//")
    echo $SHORT_NAME
    switch_site $SHORT_NAME
    switch_db $argv[1]
    #rvm use ree-1.8.7-2012.02
    #rvm gemset use rbm-rvm-$SHORT_NAME --create
    rbenv local ree-1.8.7-2012.02
    bundle install --full-index --path .bundle/gems --binstubs .bundle/bin
    rbenv rehash >/dev/null ^&1
  else
    echo "No site specified."
  end
end
