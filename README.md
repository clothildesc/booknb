# Booknb

An Airbnb-style platform for book lovers. Share, discover, and borrow books from your community.

## 📋 About The Project

**Booknb** is a peer-to-peer book sharing platform developed during Le Wagon bootcamp. Inspired by Airbnb's marketplace model, Booknb connects book owners with readers.
Instead of buying every book you want to read, Booknb allows you to list your personal books for others to borrow, and browse and borrow books from nearby book lovers.

**This project was developed as a team project during Le Wagon bootcamp.**

<br>
<img width="1420" height="687" alt="Capture d’écran 2026-02-12 à 18 34 17" src="https://github.com/user-attachments/assets/e911324f-1b1a-4626-bebf-0007940621bb" />
<br>

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
- **List your books** with photos, descriptions, and availability
- **Location-based** sharing with nearby readers
- **Track your library** - see which books are borrowed

### For Book Borrowers
- **Search & discover** books by title, author, or genre
- **Find nearby books** using geolocation
- **Request bookings** for specific dates

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
   - Set availability
4. Publish your listing

### Borrowing a Book

1. Browse available books or search by keywords
2. View book details and owner profile
3. Select desired dates
4. Send a booking request
5. Wait for owner approval
6. Arrange pickup with the owner
7. Enjoy your book!

## 👥 Team

This project was developed by a team of 4 developers during Le Wagon bootcamp:

- **Clothilde** - [@clothildesc](https://github.com/clothildesc)
- **Zena** - [@ZenaGiulia](https://github.com/ZenaGiulia)
- **Pierre** - [@abele17](https://github.com/abele17)
- **Isaiah** - [@IsaiahZalc](https://github.com/IsaiahZalc)
  
## 📄 License

This project was created as part of Le Wagon bootcamp curriculum.

---

*Made with ❤️ and 📚 during Le Wagon bootcamp*
