import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = ["mybooks", "bookings"]

  connect() {
    this.mybooksTarget.classList.remove("d-none")
    this.bookingsTarget.classList.add("d-none")
  }

  showBooks() {
    this.mybooksTarget.classList.remove("d-none")
    this.bookingsTarget.classList.add("d-none")
  }

  showBookings() {
    this.bookingsTarget.classList.remove("d-none")
    this.mybooksTarget.classList.add("d-none")
  }
}
