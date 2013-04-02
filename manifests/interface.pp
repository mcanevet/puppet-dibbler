define dibbler::interface (
  $t1=undef,
  $t2=undef,
  $prefered_lifetime=undef,
  $options=undef,
  $pools=undef,
) {
  concat::fragment {"dibbler.conf-interface-${name}":
    target  => $dibbler::conffile,
    content => template('dibbler/dibbler.conf-interface.erb'),
    order   => 10,
  }
}
