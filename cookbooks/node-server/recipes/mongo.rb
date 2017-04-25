
#
# Cookbook:: node-server
# Recipe:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.
include_recipe 'apt'
include_recipe 'mongodb3::default'

 magic_shell_environment 'MONGODB_URI' do
   value 'mongodb://192.168.10.101'
 end
