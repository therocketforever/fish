function bmount -d "Mount `binary_files` for VMM development via `sshfs`"
  if set -q $argv
    switch $argv
      case att
	echo $argv
      case vzw
        echo $argv
      case '*'
        echo wtf?
    end
  end
end
