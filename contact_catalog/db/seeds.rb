# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

contacts = Contact.create([
  {name: 'Tin', age: 26, phone_number: 6265928615, email:'tin.tran0519@gmail.com',
   computer_languages: 'Javascript, Ruby', pets: 'Rabbit, Hamster'}
  ])
