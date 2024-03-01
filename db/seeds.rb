require "faker"
require "open-uri"

puts "Deleting books, bookings, users..."
Book.destroy_all
Booking.destroy_all
User.destroy_all

adresses = [
  "10 Rue de Rivoli, Paris",
  "25 Avenue des Champs-Élysées, Paris",
  "7 Rue de la Paix, Paris",
  "15 Rue de la République, Paris",
  "30 Boulevard Haussmann, Paris"
]

  images = [
    "city_of_orange.jpeg",
    "harry_potter.jpeg",
    "in_your_own_backyard.jpeg",
    "little_frog.png",
    "percy_jackson.jpeg",
    "soul.jpeg",
    "the_girl_who_never.jpeg"
  ]


  user_1 = User.create!(email: "toto@gmail.com", password: "123456", address: "10 Rue des Petits Carreaux, Paris")
  user_2 = User.create!(email: "titi@gmail.com", password: "123456", address: "15 Rue Montorgueil, Paris")
  user_3 = User.create!(email: "tonton@gmail.com", password: "123456", address: "20 Rue Tiquetonne, Paris")
  user_4 = User.create!(email: "tata@gmail.com", password: "123456", address: "25 Rue Étienne Marcel, Paris")
  user_5 = User.create!(email: "tutu@gmail.com", password: "123456", address: "30 Rue Réaumur, Paris")
  user_6 = User.create!(email: "tete@gmail.com", password: "123456", address: "35 Rue Greneta, Paris")
  user_7 = User.create!(email: "tititi@gmail.com", password: "123456", address: "40 Rue Saint-Denis, Paris")
  user_8 = User.create!(email: "tatata@gmail.com", password: "123456", address: "25 Rue Étienne Marcel, Paris")
  user_9 = User.create!(email: "tototo@gmail.com", password: "123456", address: "44 Rue Tiquetonne, Paris")

  puts "Creating seeds..."

    book_1 = Book.new(
      title: "City of Orange",
      author: "David Yoon",
      summary: "A man who can not remember his own name wakes up in an apocalyptic landscape, injured and alone. He has vague memories of life before, but he can't see it clearly and can't grasp how his current situation came to be. He must learn to survive by finding sources of water and foraging for food",
      year: "2022",
      isbn_number: "059342218X",
      editor: "G.P. Putnam's Sons",
      user: user_1,
      status: "available"
    )

    book_1.photo.attach(
      io: File.open('public/images/city_of_orange.jpeg'),
      filename: 'cover.jpg',
      content_type: 'image/jpeg'
    )

    book_1.save!

    book_2 = Book.new(
      title: "Harry Potter and the Cursed Child",
      author: "J. K. Rowling",
      summary: "Based on an original new story by J.K. Rowling, John Tiffany, and Jack Thorne, a new play by Jack Thorne, Harry Potter and the Cursed Child is the eighth story in the Harry Potter series and the first official Harry Potter story to be presented on stage. It was always difficult being Harry Potter and it isn't much easier now that he is an overworked employee of the Ministry of Magic, a husband and father of three school-age children.",
      year: "2016",
      isbn_number: "1410496201",
      editor: "Thorndike Press Large Print",
      user: user_2,
      status: "available"
    )

    book_2.photo.attach(
      io: File.open('public/images/harry_potter.jpeg'),
      filename: 'cover.jpg',
      content_type: 'image/jpeg'
    )

    book_2.save!

    book_3 = Book.new(
      title: "Fourth Wing",
      author: "Rebecca Yarros",
      summary: "Twenty-year-old Violet Sorrengail was supposed to enter the Scribe Quadrant, living a quiet life among books and history. Now, the commanding general—also known as her tough-as-talons mother—has ordered Violet to join the hundreds of candidates striving to become the elite of Navarre: dragon riders.",
      year: "2023",
      isbn_number: "1385749208",
      editor: "Entangled: Red Tower Books",
      user: user_3,
      status: "available"
    )

    book_3.photo.attach(
      io: File.open('public/images/fourth_wing.jpg'),
      filename: 'cover.jpg',
      content_type: 'image/jpeg'
    )

    book_3.save!

    book_4 = Book.new(
      title: "The Art Thief",
      author: "Michael Finnkel",
      summary: "In this spellbinding portrait of obsession and flawed genius, the best-selling author of The Stranger in the Woods brings us into Breitwieser’s strange world—unlike most thieves, he never stole for money, keeping all his treasures in a single room where he could admire them.",
      year: "2023",
      isbn_number: "1382048374",
      editor: "Knopfs",
      user: user_4,
      status: "available"
    )

    book_4.photo.attach(
      io: File.open('public/images/the_art_thief.jpg'),
      filename: 'cover.jpg',
      content_type: 'image/png'
    )

    book_4.save!

    book_5 = Book.new(
      title: "Percy Jackson & the Olympians",
      author: "Rick Riordan",
      summary: "Percy Jackson, now a high school senior, needs three recommendation letters from the Greek gods in order to get into New Rome University. He earned his first one by retrieving Ganymede’s chalice. Now the goddess Hecate has offered Percy another “opportunity”—all he has to do is pet sit her polecat, Gale, and mastiff, Hecuba, over Halloween week while she is away. Piece of cake, right?",
      year: "2006",
      isbn_number: "9780786838653",
      editor: "Disney Hyperion",
      user: user_5,
      status: "available"
    )

    book_5.photo.attach(
      io: File.open('public/images/percy_jackson.jpeg'),
      filename: 'cover.jpg',
      content_type: 'image/png'
    )

    book_5.save!

    book_6 = Book.new(
      title: "Soul",
      author: "Olivia Wilson",
      summary: "In the misty corners of a barely remembered life, Alex found only fleeting images of joy, like ephemeral butterflies. They fluttered away whenever an attempt was made to grasp them. Alex had known love, or so the photographs on the mantel seemed to promise. Yet, the warm face that leaned over their hospital bed, draped with genuine anguish and undeterred devotion, belonged to a stranger.",
      year: "2023",
      isbn_number: "9788374992",
      editor: "Love Books",
      user: user_6,
      status: "available"
    )

    book_6.photo.attach(
      io: File.open('public/images/soul.jpeg'),
      filename: 'cover.jpg',
      content_type: 'image/png'
    )

    book_6.save!

    book_7 = Book.new(
      title: "The Girl Who Never Was",
      author: "Skylar Dorset",
      summary: "On Selkie's seventeenth birthday, Selkie finally understands why. All she wanted a simple 'Happy Birthday' from her secret crush, Ben. But the instant she blurts out the truth, her whole world shatters.
      Because the world she's known is only an elaborate enchantment designed to conceal the truth: Selkie is a half-faerie princess. And her mother wants her dead.",
      year: "2014",
      isbn_number: "9781402292538",
      editor: "Sourcebooks Fire",
      user: user_7,
      status: "available"
    )

    book_7.photo.attach(
      io: File.open('public/images/the_girl_who_never.jpeg'),
      filename: 'cover.jpg',
      content_type: 'image/png'
    )

    book_7.save!

    book_8 = Book.new(
      title: "The Berry Pickers",
      author: "Amanda Peters",
      summary: "July 1962. A Mi’kmaq family from Nova Scotia arrives in Maine to pick blueberries for the summer. Weeks later, four-year-old Ruthie, the family’s youngest child, vanishes. She is last seen by her six-year-old brother, Joe, sitting on a favorite rock at the edge of a berry field. Joe will remain distraught by his sister’s disappearance for years to come.",
      year: "2023",
      isbn_number: "2394809387",
      editor: "Catapult",
      user: user_8,
      status: "available"
    )

    book_8.photo.attach(
      io: File.open('public/images/the_berry_pickers.jpeg'),
      filename: 'cover.jpg',
      content_type: 'image/png'
    )

    book_8.save!

    book_9 = Book.new(
      title: "Wellness",
      author: "Nathan Hill",
      summary: "When Jack and Elizabeth meet as college students in the gritty '90s Chicago art scene, the two quickly join forces and hold on tight, each eager to claim a place in the thriving underground scene with an appreciative kindred spirit. Fast-forward twenty years to suburban married life, and alongside the challenges of parenting, they encounter the often",
      year: "2023",
      isbn_number: "9837482485",
      editor: "Knopf",
      user: user_9,
      status: "available"
    )

    book_9.photo.attach(
      io: File.open('public/images/wellness.jpg'),
      filename: 'cover.jpg',
      content_type: 'image/png'
    )

    book_9.save!

puts "Finished!"
