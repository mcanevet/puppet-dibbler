class dibbler (
  $log_level = undef,
  $log_mode = undef,
  $stateless = undef,
  $ifaces = {},
  $enable = true,
  $start = true,
) {
  class{'dibbler::install':} ->
  class{'dibbler::config':} ~>
  class{'dibbler::service':} ->
  Class['dibbler']
}
