stage { 'req-install': before => Stage['rvm-install'] }

class requirements {
  group { "puppet": ensure => "present", }
  exec { "apt-update":
    command => "/usr/bin/apt-get -y update"
  }

  package {
    ["mysql-client", "mysql-server", "libmysqlclient-dev"]: 
      ensure => installed, require => Exec['apt-update']
  }
}

class installrvm {
  include rvm
  rvm::system_user { vagrant: ; }

  if $rvm_installed == "true" {
    rvm_system_ruby {
      'ruby-1.9.3':
        ensure => 'present',
        default_use => false;
      'ruby-2.0.0':
        ensure => 'present',
        default_use => false;
    }
  }
}

class doinstall {
  class { requirements:, stage => "req-install" }
  include installrvm
}

include doinstall