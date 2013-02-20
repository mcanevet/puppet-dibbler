class dibbler::service {
  $ensure = $dibbler::start ? {true => running, default => stopped}

  service{'dibbler-server':
    ensure => $ensure,
    enable => $dibbler::enable,
  }
}
