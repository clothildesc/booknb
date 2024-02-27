import "faker"

User.destroy_all
Book.destroy_all

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
        user: user # Associate the book with the user
      )
    end
  end
