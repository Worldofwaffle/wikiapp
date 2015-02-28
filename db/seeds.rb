# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'faker'

10.times do
  user = User.new(
    name:     Faker::Name.name,
    email:    Faker::Internet.email,
    password: Faker::Lorem.characters(10)
  )
  user.skip_confirmation!
  user.save!
 end
users = User.all


20.times do
  user = users.sample
   user.wikis.create!(
    body:   Faker::Lorem.paragraph
   )
  end
 wikis = Wiki.all




admin = User.new(
   name:     'Admin User',
   email:    'admin@example.com',
   password: 'helloworld'
  )
 admin.skip_confirmation!
 admin.save!