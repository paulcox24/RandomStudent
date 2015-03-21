# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Student.destroy_all

@students = [
"Tyler Lyman",
"Nicole Radford",
"Jake Oldham",
"Regan Shupe",
"Joey Hilton",
"Chris Collinsworth",
"Ben Lyman",
"Ruben Sanchez",
'Deborah Philip',
"Richi Priego",
"Aaron Eveleth",
"Ariana Dorado",
"Nina Alvarez",
"Ray Gonzalez",
'Ryan Carter',
'Dillon Cortez']

@students.each do |name|
  Student.create(name: name, wins: 0)
end