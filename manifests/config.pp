class dibbler::config {

  file {'/etc/dibbler/server.conf':
    owner   => root,
    group   => root,
    mode    => '0644',
    content => template('dibbler/server.conf.erb'),
  }

}
