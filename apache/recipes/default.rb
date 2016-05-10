#
# Cookbook Name:: apache
# Recipe:: default
#
# Copyright (c) 2016 The Authors, All Rights Reserved.


package 'apache2'

service 'apache2' do
  action [:start, :enable]
end

cookbook_file '/var/www/html/index.html' do
  source 'index.html'
end
