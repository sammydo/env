#
# Cookbook:: node-server
# Spec:: default
#
# Copyright:: 2017, The Authors, All Rights Reserved.

require 'spec_helper'

describe 'node-server::default' do
  context 'When all attributes are default, on an Ubuntu 16.04' do
    let(:chef_run) do
      # for a complete list of available platforms and versions see:
      # https://github.com/customink/fauxhai/blob/master/PLATFORMS.md
      runner = ChefSpec::SoloRunner.new(platform: 'ubuntu', version: '16.04')
      runner.converge(described_recipe)
    end

    it 'converges successfully' do
      expect { chef_run }.to_not raise_error
    end

    it "should install nginx" do
      expect(chef_run).to install_package 'nginx'
    end
    # it "should install magic_shell" do
    #   expect(chef_run).to install_package 'magic_shell_environment'
    # end


    it "enables the nginx service" do
      expect(chef_run).to enable_service 'nginx'
    end
    it "starts the nginx service" do
      expect(chef_run).to start_service 'nginx'
    end

    it "checks if erb exists" do
      expect(chef_run).to create_template('/etc/nginx/sites-available/default')
        # only_if { ::File.exists?('/etc/nginx/sites-available/default') }
    end

    it "notifies nginx to reload" do
      template = chef_run.template('/etc/nginx/sites-available/default')
      expect(template).to notify('service[nginx]').to(:reload)

    end
    it "should include nodejs" do
      expect(chef_run).to include_recipe 'nodejs'
    end

    it "should include pm2" do
      expect(chef_run).to install_nodejs_npm 'pm2'
    end

    it "should include bower" do
      expect(chef_run).to install_nodejs_npm 'bower'
    end

    # it "should include MONGODB_URI" do
    #   expect(chef_run).to add_magic_shell_environment 'MONGODB_URI'
    # end

    it "should include npm" do
      expect(chef_run).to include_recipe 'nodejs::npm'
    end
    it "should include git" do
      expect(chef_run).to include_recipe 'git::default'
    end


  end
end
