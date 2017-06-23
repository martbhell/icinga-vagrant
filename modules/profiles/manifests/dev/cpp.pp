
class profiles::dev::cpp {

  contain ::epel

  package { [
          'ccache',
          'gcc-c++',
          'libstdc++-devel',
          'cmake'
    ]:
    ensure => present,
  }
}
