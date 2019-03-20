class profile::nginx (

) {
  # Install nginx in the first place
  include ::nginx

  # Set up the server resource for the clock host
  nginx::resource::server { $facts['fqdn']:
    listen_port => 8080,
    www_root    => '/var/www',
  } 
}
