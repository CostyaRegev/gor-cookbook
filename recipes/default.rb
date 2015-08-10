#
# Cookbook Name:: gor-cookbook
# Recipe:: default
#
# Copyright 2015, Costya.regev@me.com
#
# All rights reserved - Do Not Redistribute


include_recipe "gor::install"
include_recipe "gor::service"



case node['gor']['install_method']
when 'binary'
  include_recipe 'gor::install_binary'
when 'source'
  include_recipe 'gor::install_source'
else
  Chef::Application.fatal!("[gor::default] unknown install method, method=#{node['gor']['install_method']}")
end
