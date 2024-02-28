require "faker"
require "open-uri"

Book.destroy_all
Booking.destroy_all
User.destroy_all

  5.times do
    user = User.create!(
      email: Faker::Internet.email,
      password: 'password'
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

      file = URI.open(Faker::LoremFlickr.image(size: "200x200", search_terms: ['books']))
      book.photo.attach(io: file, filename: "book_cover.png", content_type: "image/jpg")
    end
  end
