class mysql::slave {
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
    content => template('mysql/mysqld_slave.erb'),
    require => Package['mysql-server'],
    notify  => Service['mysql'],
  }

  exec { 'start-replication':
    command => "/usr/bin/mysql -u root -e \"CHANGE MASTER TO MASTER_HOST='192.168.1.10', MASTER_USER='replica', MASTER_PASSWORD='replica_password', MASTER_LOG_FILE='mysql-bin.000001', MASTER_LOG_POS=4; START SLAVE;\"",
    unless  => "/usr/bin/mysql -u root -e \"SHOW SLAVE STATUS\\G\" | grep 'Slave_IO_Running: Yes'",
    require => Service['mysql'],
  }
}
