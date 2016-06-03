#
# Cookbook Name:: apache
# Spec:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.

require 'spec_helper'

describe 'apache::default' do
  context 'When all attributes are default, on an unspecified platform' do
    let(:chef_run) do
      runner = ChefSpec::ServerRunner.new
      runner.converge(described_recipe)
    end

    it 'converges successfully' do
      expect { chef_run }.to_not raise_error
    end

    it 'installs apache' do
      expect(chef_run).to install_package('apache2')
    end

    it 'creates the html file' do
      expect(chef_run).to render_file('/var/www/html/index.html').with_content(/Discover/)
    end
  end
end
