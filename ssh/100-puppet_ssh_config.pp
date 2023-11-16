# Using puppet
# 1. Your SSH client configuration must be configured to use the private key ~/.ssh/school
# 2. Your SSH client configuration must be configured to refuse to authenticate using a password

include stdlib

file_line { 'Refuse auth with password':
  ensure => present,
  path    => '/etc/ssh/ssh_config',
  line    => '    PasswordAuthentication no',
  replace => true,
}

file_line { 'specify identity file path':
  ensure  => present,
  path    => '/etc/ssh/ssh_config',
  line    => '     IdentityFile ~/.ssh/school',
  replace => true,
}
