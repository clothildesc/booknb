import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="toggle"
export default class extends Controller {
  connect() {
    console.log("test");
  }

  bookingRequest() {
    this.togglableElementTarget.classList.toggle("d-block");
  }
}
