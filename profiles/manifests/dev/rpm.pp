

class profiles::dev::rpm {
  package { [
          'rpmdevtools',
          'yum-utils'
    ]:
    ensure => present,
    requires => Class['epel']
  }
}
