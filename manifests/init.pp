class dibbler (
  $log_level = unset,
  $log_mode = unset,
  $stateless = unset,
  $ifaces = {},
  $enable = true,
  $start = true,
) {
  class{'dibbler::install':} ~>
  class{'dibbler::config':} ~>
  class{'dibbler::service':} ~>
  Class['dibbler']
}
