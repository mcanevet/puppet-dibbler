class dibbler::config {

  include concat::setup

  concat {'/etc/dibbler/server.conf':
    owner   => root,
    group   => root,
    mode    => '0644',
  }

  concat::fragment {'dibbler.conf-global':
    target  => '/etc/dibbler/server.conf',
    content => template('dibbler/server.conf-global.erb'),
  }

}
