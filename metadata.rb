name             'gor-cookbook'
maintainer       'Costya.regev@me.com'
maintainer_email 'Costya.regev@me.com'
license          'All rights reserved'
description      'Installs/Configures gor-cookbook'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'


recipe "gor", "Installs gor service"
recipe "gor::install", "Creates Users & Groups ,limits, directories"
recipe "gor::service","Instal & Configures gor init.d service"



%w{ ark python }.each do |cb|
  depends cb
end

%w{ ubuntu centos debian amazon redhat }.each do |os|
  supports os
end 
