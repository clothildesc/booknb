import "faker"

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

  5.times do
    user = User.create!(
      email: Faker::Internet.email,
      password: 'password'
    )

    2.times do
      Book.create!(
        title: Faker::Book.title,
        author: Faker::Book.author,
        summary: Faker::Lorem.paragraph(sentence_count: 5),
        year: Faker::Number.between(from: 1900, to: Time.now.year),
        isbn_number: Faker::Number.leading_zero_number(digits: 13),
        editor: Faker::Book.publisher,
        book_picture: images.sample,
        user: user
      )
    end
  end
