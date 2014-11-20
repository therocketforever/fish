# F.A.O: Find And Open
# finds a file whose name matches the string provided
# and opens it with whatever the default handler is 
# for that file type.
# Ignores any files in .rsync_cache
function fao -d "Finds & opens file with name matching string"
  open (find . -name "$argv[1]" | grep -v '\.rsync_cache')
end