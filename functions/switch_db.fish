# switches between multiple database.yml configuration files
# Depends upon the presensce of a ~/db_configs/ directory
# Usage: expects files in that directory to be named with
# database.yml.unique_string_here
# database.yml.o2_local (for example)
# you would then type this to switch to that database
# switch_db o2_local
# and it will copy database.yml.att_02 to database.yml   
# (overwriting whatever's there)
# you then have to restart your local rails server for this to take effect
# Just make sure you have whatever's in database.yml copied to something
# with a named extension before you run this or else it'll be
# overwritten.
function switch_db -d "Switches between multiple database.yml configuration files. Depends upon the presensce of a ~/db_configs/ directory"
  if test -e ~/db_configs/database.yml.$argv[1]
    cp ~/db_configs/database.yml.$argv[1] config/database.yml
    echo Loaded: ~db_configs/database.yml.$argv[1]
    cat config/database.yml
  else
    echo "Can't find: ~/db_configs/database.yml.$argv[1]"
  end
end