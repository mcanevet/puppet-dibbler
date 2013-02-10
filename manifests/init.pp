class dibbler (
  $log_level = unset,
  $log_mode = unset,
  $stateless = unset,
) {
  class{'dibbler::install':} ~>
  class{'dibbler::config':} ~>
  class{'dibbler::service':} ~>
  Class['dibbler']
}
