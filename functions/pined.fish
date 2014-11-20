function pined -d "Show a list of files marked assume unchanged in a git repo"
  git ls-files -v | grep '^[[:lower:]]'
end
