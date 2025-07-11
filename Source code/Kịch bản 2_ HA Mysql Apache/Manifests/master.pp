class mysql::master {
  package { 'mysql-server':
    ensure => installed,
  }

  service { 'mysql':
    ensure => running,
    enable => true,
    require => Package['mysql-server'],
  }

  file { '/etc/mysql/mysql.conf.d/mysqld.cnf':
    ensure  => file,
    content => template('mysql/mysqld_master.erb'),
    require => Package['mysql-server'],
    notify  => Service['mysql'],
  }

  exec { 'create-replication-user':
    command => "/usr/bin/mysql -u root -e \"CREATE USER 'replica'@'%' IDENTIFIED BY 'replica_password'; GRANT REPLICATION SLAVE ON *.* TO 'replica'@'%';\"",
    unless  => "/usr/bin/mysql -u root -e \"SELECT user FROM mysql.user WHERE user='replica';\" | grep 'replica'",
    require => Service['mysql'],
  }
}
