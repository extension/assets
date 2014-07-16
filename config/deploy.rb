set :stages, %w(prod)
set :default_stage, "prod"
require 'capistrano/ext/multistage'

require 'capatross'

set :application, "assets"
set :repository,  "git@github.com:extension/assets.git"
set :scm, "git"
set :user, "pacecar"
set :use_sudo, false
set :keep_releases, 3
ssh_options[:forward_agent] = true
set :port, 24
#ssh_options[:verbose] = :debug

after "deploy:update_code", "deploy:cleanup"


namespace :deploy do

  [:start, :stop].each do |t|
    desc "#{t} : no-op "
    task t, :roles => :app do ; end
  end


end
