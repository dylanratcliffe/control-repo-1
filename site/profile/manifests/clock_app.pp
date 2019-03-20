class profile::clock_app (

) {
  file { '/var/www':
    ensure => directory,
    owner  => 'root',
    group  => 'root',
    mode   => '0755',
  }

  file { "/var/www/index.html":
    ensure => file,
    owner  => 'root',
    group  => 'root',
    mode   => '0644',
    source => 'http://bl.ocks.org/mbostock/raw/1096355/index.html',
  }

}
