class profile::clock_app (
  String $docroot = '/var/www'
) {
  file { $docroot:
    ensure => directory,
    owner  => 'root',
    group  => 'root',
    mode   => '0755',
  }

  file { "${docroot}/index.html":
    ensure => file,
    owner  => 'root',
    group  => 'root',
    mode   => '0644',
    source => 'puppet:///modules/profile/clock.html',
  }

  # Set up the server resource for the clock host
  nginx::resource::server { $facts['fqdn']:
    listen_port => 8080,
    www_root    => $docroot,
  } 

}
