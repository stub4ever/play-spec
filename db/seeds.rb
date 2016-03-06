# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.destroy_all

d1 = DateTime.new(2015, 6, 06)
d2 = DateTime.new(2015, 6, 06)
d3 = DateTime.new(2015, 6, 11)

User.create!([
  {
  username: "4stars",
  name: "Kayo",
  age: 25,
  email: "kayo@gmail.com",
  password: "21312ew",
  address: "Nijmegen",
  bio: "I am Developer",
  date_project: d1
  },
  {
  username: "Aetherius",
  name: "An",
  age: 17,
  email: "an@gmail.com",
  password: "1221",
  address: "Oss",
  bio: "I am Master",
  date_project: d2
  },
  {
  username: "Hydeout",
  name: "Quoc",
  age: 25,
  email: "quic@gmail.com",
  password: "Quocokq1",
  address: "Almere",
  bio: "I am Designer",
  date_project: d3
  }
  ])
