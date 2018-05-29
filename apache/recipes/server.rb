#
# Cookbook Name:: apache
# Recipe:: server
#
# Copyright (c) 2018 The Authors, All Rights Reserved.

package 'apache2'

file 'var/www/html/index.html' do
  source 'index.html.erb'
end

service 'apache2' do
  action [:start,:enable]
end

