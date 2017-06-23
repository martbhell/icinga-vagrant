

class profiles::webserver::apache {

  class {'apache':
    # don't purge php, icingaweb2, etc configs
    purge_configs => false,
    default_vhost => false
  }

  class {'::apache::mod::php': }

  apache::vhost { 'vagrant-demo.icinga.com':
    priority        => 5,
    port            => '80',
    docroot         => '/var/www/html',
    rewrites => [
      {
        rewrite_rule => ['^/$ /icingaweb2 [NE,L,R=301]'],
      },
    ],
  }

  apache::vhost { 'vagrant-demo.icinga.com-ssl':
    priority        => 5,
    port            => '443',
    docroot         => '/var/www/html',
    ssl		  => true,
    add_listen      => false, #prevent duplicate listen entries
    rewrites => [
      {
        rewrite_rule => ['^/$ /icingaweb2 [NE,L,R=301]'],
      },
    ],
  }
  include '::php::cli'
  include '::php::mod_php5'

  php::ini { '/etc/php.ini':
    display_errors => 'On',
    memory_limit => '256M',
    date_timezone => 'Europe/Berlin',
    session_save_path => '/var/lib/php/session'
  }

}
