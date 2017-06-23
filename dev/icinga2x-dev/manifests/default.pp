
include profiles::base::common
include profiles::dev::rpm
include profiles::dev::icinga2
include profiles::webserver::apache

#include epel
#include vim
#
## package builds
#package { [ 'yum-utils', 'rpmdevtools' ]:
#  ensure => latest,
#  require => Class['epel']
#}
#
## base dev
#package { [ 'wget', 'git' ]:
#  ensure => latest,
#  require => Class['epel']
#}
#
## base php
## TODO
#
## base c++
#package { [ 'ccache', 'gcc-c++', 'libstdc++-devel', 'cmake' ]:
#  ensure => latest,
#  require => Class['epel']
#}
#
## icinga dev
#package { [ 'openssl-devel', 'flex', 'bison', 'boost-devel', 'mariadb-devel', 'postgresql-devel' ]:
#  ensure => latest,
#  require => Class['epel']
#}

