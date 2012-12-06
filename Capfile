load 'deploy' if respond_to?(:namespace) # cap2 differentiator

set :application, "turnandzoom-website"

set :deploy_to, "/home/deployer/turnandzoom"
set :deploy_via, :copy
set :repository, "build"
set :scm, :none
set :copy_compression, :gzip 
set :use_sudo, false 
set :domain, 'turnandzoom.com' 
set :user, 'deployer' 

role :web, "66.228.39.160"                          

before 'deploy:update_code' do 
  run_locally 'rm -rf build/*'
  run_locally 'middleman build'
end

