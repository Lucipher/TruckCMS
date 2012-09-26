# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
puts 'SETTING UP DEFAULT USER LOGIN'
user = User.create! :name => 'Administrator', :email => 'admin@example.com', :password => 'Adm1n', :password_confirmation => 'Adm1n'
puts 'New user created: ' << user.name
user2 = User.create! :name => 'User', :email => 'user@example.com', :password => 'password', :password_confirmation => 'password'
puts 'New user created: ' << user2.name
user.add_role :admin
