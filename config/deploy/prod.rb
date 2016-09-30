set :deploy_to, '/services/assets/'
server 'assets.aws.extension.org', :app, :web, :db, :primary => true
set :branch, 'master'
