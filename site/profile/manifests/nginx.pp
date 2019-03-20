class profile::nginx (

) {
  # Install nginx in the first place
  include ::nginx

  # Add monitoring to all webservers
  include profile::monitoring
}
