function sup -d "use `lsof` to check files open on port"
  command lsof -i :$argv
end

