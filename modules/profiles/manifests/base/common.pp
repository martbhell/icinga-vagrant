# Requires epel, vim

class profiles::base::common {

  # editor
  include vim

  # default packages
  package { [
             'wget',
             'git',
             'mailx',
             'bash-completion',
             'screen',
             'htop'
    ]:
    ensure => present,
    require => Class['epel']
  }

}
