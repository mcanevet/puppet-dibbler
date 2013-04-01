class dibbler::config {
  concat {$dibbler::conffile:
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
  }
  concat::fragment {"dibbler.conf-globals":
    target  => $dibbler::conffile,
    content => template('dibbler/server.conf.erb'),
    order   => 01,
  }
  create_resources(dibbler::interface, $dibbler::ifaces)
}
