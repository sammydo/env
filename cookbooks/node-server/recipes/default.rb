#
# Cookbook:: node-server
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.
include_recipe 'apt'

package 'nginx' do
  action :install
end

service 'nginx' do
  supports status: true, restart: true, reload: true
  action [:enable, :start]
end


template '/etc/nginx/sites-available/default' do
  source 'nginx.default.erb'
  notifies :reload, "service[nginx]"
end

include_recipe 'nodejs'
include_recipe 'git'
nodejs_npm 'pm2'
nodejs_npm 'gulp'
nodejs_npm 'bower'

include_recipe 'mongodb3::default'
magic_shell_environment 'MONGODB_URI' do
  value 'mongodb://192.168.10.101'
end


# include_recipe 'sc-mongodb::default'
# include_recipe 'mongodb3::default'
