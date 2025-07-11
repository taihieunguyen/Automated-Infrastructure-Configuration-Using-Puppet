class nginx{
    package {'nginx':
        ensure => installed,
    }
    service { 'nginx':
        ensure => running,
        enable => true,
        require => Package['nginx'].
    }
    file {'/var/www/html/index.html':
        ensure => file,
        content => "Welcome to Nginx managed bt Puppet!\n",
        require => Package['nginx'],
    }
}