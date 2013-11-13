# Thi file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

sam = User.create(first_name: 'Sam', last_name: 'Jang', email: 'sam@blah.com')
john = User.create(first_name: 'John', last_name: 'Smith', email: 'john@blah.com')
