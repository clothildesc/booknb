import { Controller } from "@hotwired/stimulus"
import flatpickr from "flatpickr";

// Connects to data-controller="datepicker"
export default class extends Controller {
  static targets = [ 'range', 'startDateInput', 'endDateInput' ]
  connect() {
    flatpickr(this.rangeTarget, {
     mode: "range",
     minDate: "today",
     onChange: (selectedDates, dateStr, instance) => {
        if (selectedDates.length === 2) {
          this.startDateInputTarget.value = selectedDates[0];
          this.endDateInputTarget.value = selectedDates[1];
        }
      },
    })
  }
}
