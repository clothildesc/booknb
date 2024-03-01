import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="toggle-form"
export default class extends Controller {
  static targets = ["form", "button"]

  connect() {
    console.log("hello")
  }

  fire(event) {
    event.preventDefault()
    this.formTarget.classList.toggle("d-none");
    this.buttonTarget.classList.add("d-none");
  }
}
