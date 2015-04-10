# == Class: centosrepos
#
# Full description of class centosrepos here.
#
# === Parameters
#
# Document parameters here.
#
# [*sample_parameter*]
#   Explanation of what this parameter affects and what it defaults to.
#   e.g. "Specify one or more upstream ntp servers as an array."
#
# === Variables
#
# Here you should define a list of variables that this module would require.
#
# [*sample_variable*]
#   Explanation of how this variable affects the funtion of this class and if
#   it has a default. e.g. "The parameter enc_ntp_servers must be set by the
#   External Node Classifier as a comma separated list of hostnames." (Note,
#   global variables should be avoided in favor of class parameters as
#   of Puppet 2.6.)
#
# === Examples
#
#  class { 'centosrepos':
#    servers => [ 'pool.ntp.org', 'ntp.local.company.com' ],
#  }
#
# === Authors
#
# Author Name <ivano.talamo@roma1.infn.it>
#
# === Copyright
#
# Copyright 2015 Your name here, unless otherwise noted.
#
class centosrepos (
  $enable_base    = false,
  $enable_updates = false,
  $enable_extras  = false,
  $enable_plus    = false,
  $enable_contrib = false,
){
  
  file{'/etc/yum.repos.d/CentOS-base.repo':
    ensure  => present,
    content => template('centosrepos/CentOS-base.erb')
  }
  
}
