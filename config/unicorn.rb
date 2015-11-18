working_directory "/vagrant"
pid "/vagrant/tmp/pids/unicorn.pid"
stderr_path "/vagrant/log/unicorn.log"
stdout_path "/vagrant/log/unicorn.log"

listen "/tmp/unicorn.todo.sock"

# config/unicorn.rb
#if ENV["RAILS_ENV"] == "development"
#  worker_processes 1
#else
worker_processes 2
#end
timeout 30

#RACK_ENV=none RAILS_ENV=development unicorn -c config/unicorn.rb
#bundle exec unicorn -c config/unicorn.rb -D
