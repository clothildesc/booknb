require "faker"
require "open-uri"

puts "Deleting books, bookings, users..."
Book.destroy_all
Booking.destroy_all
User.destroy_all

  images = [
    "city_of_orange.jpeg",
    "harry_potter.jpeg",
    "in_your_own_backyard.jpeg",
    "little_frog.png",
    "percy_jackson.jpeg",
    "soul.jpeg",
    "the_girl_who_never.jpeg"
  ]


  User.create!(email: "toto@gmail.com", password: "123456", latitude: 48.8566, longitude: 2.3522)

  puts "Creating seeds..."


  5.times do
    user = User.create!(
      email: Faker::Internet.email,
      password: 'password',
      latitude: Faker::Address.latitude,
      longitude: Faker::Address.longitude
    )

    2.times do
      book = Book.create!(
        title: Faker::Book.title,
        author: Faker::Book.author,
        summary: Faker::Lorem.paragraph(sentence_count: 5),
        year: Faker::Number.between(from: 1900, to: Time.now.year),
        isbn_number: Faker::Number.leading_zero_number(digits: 13),
        editor: Faker::Book.publisher,
        user: user
      )

      file = URI.open(Faker::LoremFlickr.image(size: "310x420", search_terms: ['book']))
      book.photo.attach(io: file, filename: "book_cover.png", content_type: "image/jpg")
    end
  end

puts "Finished!"
