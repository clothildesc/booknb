import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["mybooks", "myBooksBtn", "bookings", "bookingsBtn"]

  connect() {
    this.showBooks()
  }

  showBooks() {
    this.mybooksTarget.classList.remove("d-none")
    this.myBooksBtnTarget.classList.add('dashboard-btn-active')
    this.bookingsTarget.classList.add("d-none")
    this.bookingsBtnTarget.classList.remove('dashboard-btn-active')
  }

  showBookings() {
    this.bookingsTarget.classList.remove("d-none")
    this.myBooksBtnTarget.classList.remove('dashboard-btn-active')
    this.mybooksTarget.classList.add("d-none")
    this.bookingsBtnTarget.classList.add('dashboard-btn-active')
  }
}
