class dibbler (
  $log_level = undef,
  $log_mode = undef,
  $stateless = undef,
  $ifaces = {},
  $enable = true,
  $start = true,
  $conffile = '/etc/dibbler/server.conf',
) {
  class{'dibbler::install':}
  class{'dibbler::config':}
  class{'dibbler::service':}

  Class['dibbler::install'] ->
  Class['dibbler::config'] ~>
  Class['dibbler::service']

  Class['dibbler::install'] ->
  Dibbler::Interface <| |> ~>
  Class['dibbler::service']

  Class['dibbler::service'] -> Class['dibbler']
}
