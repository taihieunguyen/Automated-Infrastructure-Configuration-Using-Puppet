node 'puppetagent1.localdomain' {
  include mysql::master,
  include nginx
}

node 'puppetagent2.localdomain' {
  include mysql::slave,
  include nginx
}
