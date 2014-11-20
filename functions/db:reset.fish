function db:reset! -d "Reset rails DB from migrations"
  rake db:drop db:create db:migrate db:seed
end
