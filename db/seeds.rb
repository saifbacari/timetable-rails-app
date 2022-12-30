require 'working_hours'

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

puts "creating shop"

burger_shop = Shop.create!(name: 'Burger King')
bakery = Shop.create!(name: 'La boulangerie de Michel')
restaurant = Shop.create!(name: 'Volcano Roll')

puts restaurant.name

puts WorkingHours::Config.working_hours = {
    :tue => {'09:00' => '12:00', '13:00' => '17:00'},
    :wed => {'09:00' => '12:00', '13:00' => '17:00'},
    :thu => {'09:00' => '12:00', '13:00' => '17:00'},
    :fri => {'09:00' => '12:00', '13:00' => '17:05:30'},
    :sat => {'19:00' => '24:00'}
  }