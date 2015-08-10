#
# Cookbook Name:: gor
# [Recipe:: gor]
# Installs & Extracts gor specific defined version and it's configuration
# Copyright 2015, Costya.regev@me.com
#
# All rights reserved - Do Not Redistribute
include_recipe "ark"

# [Install gor with Ark]
 ark "gor" do
   url node['gor']['downlod_url']
   version node['gor']['version']
   append_env_path true
   mode 0755
   strip_components 0 
   action :install
   owner node['gor']['user']
   group node['gor']['group']
   has_binaries ['bin/gor']
 end
