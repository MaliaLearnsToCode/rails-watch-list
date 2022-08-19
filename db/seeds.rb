# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "faker"

puts "Cleaning database"
List.destroy_all
Movie.destroy_all
Bookmark.destroy_all

puts "Creating Lists, Movies and Bookmarks"

10.times do
  list = List.create(
    name: Faker::Music.genre
  )
  puts "List with name: #{list.name} has been created"
end

10.times do
  movie = Movie.create(
    title: Faker::Movie.title,
    overview: Faker::Movie.quote,
    poster_url: Faker::LoremFlickr.image,
    rating: rand(1..10)
  )
  puts "movie with id: #{movie.id} has been created"
end

10.times do
  bookmark = Bookmark.create(
    comment: Faker::Music.album,
    movie_id: rand(1..10),
    list_id: rand(1..10)
  )
  puts "Bookmark with comment: #{bookmark.comment} has been created"
end

puts "Finished!"
