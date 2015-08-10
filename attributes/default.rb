# [Ports & Server]
# -------------------------
default['gor']['port'] 				= "8081"
default['gor']['backend_servers'] 	= []




default['gor']['use_single_server'] = false
default['gor']['install_method'] = 

# [LIMITS]
#----------
default['gor']['limits']['memlock'] = 'unlimited'
default['gor']['limits']['nofile']  = '64000'

# [Users & Groups]
#-----------------
default['gor']['user'] 				= "gor"
default['gor']['group'] 	   		= "gor"
default['gor']['gid']          		= nil
default['gor']['uid']     	   		= nil


# [Gor]
# ------
default['gor']['version'] 			= "0.9.7"
default['gor']['gor_base_url'] 		= "https://github.com/buger/gor/releases/download"
default['gor']['gor_downlod_url']	= "#{node['gor']['gor_base_url']}/#{node['gor']['gor_version']}/#{node['gor']['gor_user']}_x64.tar.gz"

#[Service]
#---------
default['gor']['gor_pid_path'] 		= "/usr/local/run/gor"	
default['gor']['pid_file'] 		    = "#{node['gor']['gor_pid_path']}/gor.pid"

#[Paths]
#-------
default['gor']['install_dir']    	= "/usr/local/gor"
default['gor']['logs_dir'] 			= "/usr/local/var/log/gor"



if node['gor']['use_single_server']

	