require 'faker'

puts "Creating movies..."

100.times do
  movie = Movie.create(
    title: Faker::Movie.title,
    overview: Faker::Movie.quote,
    poster_url: "https://unsplash.com/s/photos/movie",
    rating: rand(1..10)
    )
  puts "Movie #{movie.id} is created"
end

puts "Finished!"
