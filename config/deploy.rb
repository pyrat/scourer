set :application, "scourer"
set :repository,  "git@github.com:pyrat/scourer.git"
set :scm, :git

role :app, "vorlich.ath.cx"
role :web, "vorlich.ath.cx"
role :db, "vorlich.ath.cx", :primary => true

ssh_options[:keys] = %w(/home/pyrat/.ssh/simple /Users/alastairbrunton/.ssh/simple)
ssh_options[:port] = 24000

set :deploy_to, "/var/www/apps/#{application}" # defaults to "/u/apps/#{application}"
set :user, "pyrat"            # defaults to the currently logged in user
set :runner, user

namespace :deploy do
  task :restart do
    run "touch #{release_path}/tmp/restart.txt"
  end
end