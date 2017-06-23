
class profiles::dev::cpp {
  package { [
          'ccache',
          'gcc-c++',
          'libstdc++-devel',
          'cmake'
    ]:
    ensure => present,
    requires => Class['epel']
  }
}
