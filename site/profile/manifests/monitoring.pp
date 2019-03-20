class profile::monitoring (

) {
  class { '::collectd':
    purge_config => true,
    interval     => 5,
  }
  
  include ::collectd::plugin::cpu
  include ::collectd::plugin::memory
  include ::collectd::plugin::interface
  include ::collectd::plugin::df
}
