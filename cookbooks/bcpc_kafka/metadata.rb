# encoding: utf-8

name             'bcpc_kafka'
maintainer       'Bloomberg Finance L.P.'
maintainer_email 'hadoop@bloomberg.net'
description      'Recipes to setup prerequisites for Kafka cluster'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          '0.1.0'

depends 'bcpc'
depends 'bcpc-hadoop'
depends 'bcpc_jmxtrans'
depends 'kafka', '>= 2.2.2'
depends 'pam'
depends 'sysctl'
depends 'ulimit'

%w(ubuntu).each do |os|
  supports os
end
