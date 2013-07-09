# coding: utf-8
#
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#

Product.create!(name: "eva1", released_on: rand(1..90).days.ago)
Product.create!(name: "eva2", released_on: rand(1..90).days.ago)
Product.create!(name: "eva3", released_on: rand(1..90).days.ago)
