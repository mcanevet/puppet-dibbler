class dibbler::service {
  service{'dibbler-server':
    ensure => running,
    enable => true,
  }
}
