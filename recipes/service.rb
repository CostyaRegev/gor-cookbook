#
# Cookbook Name:: gor
# [Recipe:: service]
# Instal & Configures gor init.d service
# Copyright 2015, Costya.regev@me.com
#
# All rights reserved - Do Not Redistribute



# [Create Gor init script]
template "/etc/init.d/gor" do
  source "gor.init.erb"
  mode '0755'
  owner "root"
  group "root"
  action :create
  notifies :restart , "service[gor]"
  variables(
     :node_group => node['gor']['backend_servers']
  )
end

service "gor" do
  supports :status => true, :restart => true , :start => true , :stop => true
  action [:enable, :start]
end


case node['gor']['service_mode']
when 'single_server'
  service_config['server'] = true
  service_config[join_mode] = node['consul']['servers']
when 'listner'
  service_config[join_mode] = node['consul']['servers']
when 'replay'
  service_config[join_mode] = node['consul']['servers']
else
  Chef::Application.fatal! %Q(node['gor']['service_mode'] must be "single_server", "listner", "replay")
end
