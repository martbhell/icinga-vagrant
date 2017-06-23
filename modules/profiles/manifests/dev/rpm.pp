

class profiles::dev::rpm {
  contain ::epel

  package { [
          'rpmdevtools',
          'yum-utils'
    ]:
    ensure => present
  }
}
