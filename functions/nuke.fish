function nuke -d "Removes all but standard gems"
  gem list | awk '{print $1}' | grep -Ev 'bundle|test-unit|rdoc|psych|io-console|minitest|rake|bigdecimal|json' | xargs gem uninstall -Iax
end

