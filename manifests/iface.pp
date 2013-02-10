define dibbler::iface (
  $t1 = undef,
  $t2 = undef,
  $prefered_lifetime = undef,
  $valid_lifetime = undef,
  $pools = [],
  $options = {},
) {
  concat::fragment {"dibbler.conf-iface-${name}":
    target  => '/etc/dibbler/server.conf',
    content => template('dibbler/server.conf-iface.erb'),
  }
}
