default['nodejs']['install_method'] = "binary"
default['nodejs']['version'] = '6.10.0'
default['nodejs']['binary']['checksum'] = '99c4136cf61761fac5ac57f80544140a3793b63e00a65d4a0e528c9db328bf40'

# MongoDB version to install
# default['mongodb3']['version'] = '3.2.1'

override['mongodb3']['config']['mongod']['net']['port'] = 3000
default['mongodb3']['config']['mongod']['net']['bindIp'] = nil # default : '0.0.0.0'
default['mongodb3']['config']['mongod']['net']['maxIncomingConnections'] = nil # default : 65536
default['mongodb3']['config']['mongod']['net']['wireObjectCheck'] = nil # default : true
default['mongodb3']['config']['mongod']['net']['ipv6'] = nil # default : false
