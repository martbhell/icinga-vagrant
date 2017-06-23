
class profiles::dev::icinga2 {

  contain ::epel
  contain ::profiles::dev::cpp

  package { [
          'flex',
          'bison',
          'boost-devel',
          'openssl-devel',
          'mariadb-devel',
          'postgresql-devel'
    ]:
    ensure => present
  }
}
