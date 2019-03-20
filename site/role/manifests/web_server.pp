class role::web_server {
  include profile::nginx
  include profile::clock_app
}
