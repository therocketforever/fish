function tt --description 'Colourize tree output'
 tree -C -I "bower_components|node_modules|vendor" $argv
end
