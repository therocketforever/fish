function mount_att -d "Mount att binary file"
  sshfs -o idmap=user  app@att-stg-app-00.dc-00.corp.lan:/nfs/rails-shared/binary_files binary_files
end
