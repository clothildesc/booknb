# BookNB 📚

An Airbnb-style platform for book lovers. Share, discover, and borrow books from your community.

## 📋 About The Project

**BookNB** is a peer-to-peer book sharing platform developed during Le Wagon bootcamp. Inspired by Airbnb's marketplace model, BookNB connects book owners with readers, promoting a sustainable and community-driven approach to reading.

Instead of buying every book you want to read, BookNB allows you to:
- List your personal books for others to borrow
- Browse and borrow books from nearby book lovers
- Build a community around shared reading interests
- Save money while reducing environmental impact

**👥 This project was developed as a team project during Le Wagon bootcamp.**

## 🛠️ Built With

### Backend
![Ruby](https://img.shields.io/badge/Ruby-CC342D?style=for-the-badge&logo=ruby&logoColor=white)
![Rails](https://img.shields.io/badge/Rails-CC0000?style=for-the-badge&logo=ruby-on-rails&logoColor=white)
![PostgreSQL](https://img.shields.io/badge/PostgreSQL-316192?style=for-the-badge&logo=postgresql&logoColor=white)

### Frontend
![JavaScript](https://img.shields.io/badge/JavaScript-F7DF1E?style=for-the-badge&logo=javascript&logoColor=black)
![Stimulus](https://img.shields.io/badge/Stimulus-77E8B9?style=for-the-badge&logo=stimulus&logoColor=black)
![Bootstrap](https://img.shields.io/badge/Bootstrap-563D7C?style=for-the-badge&logo=bootstrap&logoColor=white)
![HTML5](https://img.shields.io/badge/HTML5-E34F26?style=for-the-badge&logo=html5&logoColor=white)
![CSS3](https://img.shields.io/badge/CSS3-1572B6?style=for-the-badge&logo=css3&logoColor=white)

### Tools & Services
![Cloudinary](https://img.shields.io/badge/Cloudinary-3448C5?style=for-the-badge&logo=cloudinary&logoColor=white)
![Heroku](https://img.shields.io/badge/Heroku-430098?style=for-the-badge&logo=heroku&logoColor=white)
![Docker](https://img.shields.io/badge/Docker-2496ED?style=for-the-badge&logo=docker&logoColor=white)
![Git](https://img.shields.io/badge/Git-F05032?style=for-the-badge&logo=git&logoColor=white)

## ✨ Features

### For Book Owners
- 📖 **List your books** with photos, descriptions, and availability
- 💰 **Set your terms** - free lending or rental pricing
- 📍 **Location-based** sharing with nearby readers
- ⭐ **Build reputation** through ratings and reviews
- 📊 **Track your library** - see which books are borrowed

### For Book Borrowers
- 🔍 **Search & discover** books by title, author, or genre
- 🗺️ **Find nearby books** using geolocation
- 📅 **Request bookings** for specific dates
- 💬 **Message owners** to coordinate pickup/return
- ❤️ **Save favorites** and create reading wishlists
- ⭐ **Rate & review** books and lenders

### Platform Features
- 👤 **User profiles** with reading preferences and history
- 🔐 **Secure authentication** and authorization
- 📱 **Responsive design** - works on all devices
- 🔔 **Notifications** for booking requests and messages
- 💳 **Payment integration** (for rental bookings)
- 🌐 **Community feed** with latest listings

## 🚀 Getting Started

### Prerequisites

- Ruby 3.1.2
- Rails 7+
- PostgreSQL
- Node.js & Yarn

### Installation

1. Clone the repository
```bash
git clone https://github.com/clothildesc/booknb.git
cd booknb
```

2. Install dependencies
```bash
bundle install
yarn install
```

3. Setup the database
```bash
rails db:create
rails db:migrate
rails db:seed
```

4. Setup environment variables
```bash
# Create a .env file with:
CLOUDINARY_URL=your_cloudinary_url
```

5. Start the server
```bash
rails server
```

6. Visit `http://localhost:3000` in your browser

## 💻 Usage

### Listing a Book

1. Sign up or log in
2. Click "Add a Book"
3. Fill in book details:
   - Title, author, genre
   - Description and condition
   - Upload a photo
   - Set availability and pricing
4. Publish your listing

### Borrowing a Book

1. Browse available books or search by keywords
2. View book details and owner profile
3. Select desired dates
4. Send a booking request
5. Wait for owner approval
6. Arrange pickup with the owner
7. Enjoy your book!
8. Return the book and leave a review

### Managing Bookings

**As an Owner:**
- Review incoming booking requests
- Accept or decline with a message
- Coordinate pickup/return times
- Mark books as borrowed/returned
- Rate borrowers

**As a Borrower:**
- View your upcoming and past bookings
- Cancel requests if needed
- Track due dates
- Message owners for coordination

## 📁 Project Structure

```
booknb/
├── app/
│   ├── controllers/      # Application logic
│   ├── models/           # Database models
│   │   ├── user.rb      # User accounts
│   │   ├── book.rb      # Book listings
│   │   ├── booking.rb   # Rental bookings
│   │   └── review.rb    # Ratings and reviews
│   ├── views/            # HTML templates
│   ├── javascript/       # Stimulus controllers
│   └── assets/           # Styles and images
├── config/               # Rails configuration
├── db/                   # Database migrations
└── test/                 # Test suite
```

## 🗄️ Database Schema

Key models and relationships:

**User**
- Has many books (as owner)
- Has many bookings (as borrower)
- Has many reviews (given and received)

**Book**
- Belongs to a user (owner)
- Has many bookings
- Has many reviews
- Geocoded for location

**Booking**
- Belongs to a book
- Belongs to a user (borrower)
- Has statuses: pending, accepted, declined, completed
- Stores start/end dates and pricing

**Review**
- Belongs to a booking
- Rates both book and borrower/lender
- Contains rating (1-5) and comment

## 🌟 Key Features Implementation

### Geolocation
- **Geocoder gem** for address-to-coordinates conversion
- **Mapbox/Google Maps** for interactive map display
- Distance-based search to find nearby books

### Image Upload
- **Cloudinary** integration for photo storage
- Image optimization and CDN delivery
- Drag-and-drop upload interface

### Real-time Notifications
- **Action Cable** for live updates
- Instant notification of booking requests
- Message notifications

### Search & Filters
- **PgSearch** for full-text search
- Filter by genre, distance, availability
- Sort by date, price, or rating

## 🎨 Design Highlights

- Clean, modern interface inspired by Airbnb
- Card-based book listings with hover effects
- Interactive map for location browsing
- Mobile-first responsive design
- Smooth animations and transitions

## 🚧 Future Enhancements

- [ ] Integrated messaging system
- [ ] Book recommendations based on reading history
- [ ] Community reading groups
- [ ] Book clubs and events
- [ ] Mobile app (iOS/Android)
- [ ] Delivery/shipping options
- [ ] Reading challenges and badges
- [ ] Social features (follow users, activity feed)
- [ ] ISBN barcode scanner for quick book addition
- [ ] Integration with Goodreads API

## 🧪 Testing

Run the test suite:
```bash
rails test
rails test:system
```

## 🐳 Docker

The project includes Docker support:

```bash
docker-compose up
```

## 👥 Team

This project was developed by a team of 4 developers during Le Wagon bootcamp:

- **Clothilde Scache** - [@clothildesc](https://github.com/clothildesc)
- **Zena Giulia** - [@ZenaGiulia](https://github.com/ZenaGiulia)
- **Pierre** - [@abele17](https://github.com/abele17)
- **Isaiah Zalc** - [@IsaiahZalc](https://github.com/IsaiahZalc)

## 🙏 Acknowledgments

- [Le Wagon](https://www.lewagon.com/) - For the incredible bootcamp experience
- [Airbnb](https://www.airbnb.com/) - For the marketplace inspiration
- Our instructors and TAs for their guidance
- The book-loving community

## 📄 License

This project was created as part of Le Wagon bootcamp curriculum.

---

*Made with ❤️ and 📚 during Le Wagon bootcamp*