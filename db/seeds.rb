# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Song.create!([ { title: "Go with the Flow", album: "Songs for the Deaf", release_year: 2002,}, 
{ title: "Everlong", album: "The Colour and the Shape", release_year: 1997,},
{ title: "Plug in Baby", album: "Origin of Symmetry", release_year: 2001}, ])

songs_count = Song.all.length
puts "#{songs_count} songs were created."