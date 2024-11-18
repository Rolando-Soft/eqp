import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="tooltip1"
export default class extends Controller {
  connect() {
    const tooltipTriggerList = document.querySelectorAll('[data-bs-toggle="tooltip"]')
    const tooltipList = [...tooltipTriggerList].map(tooltipTriggerEl => new bootstrap.Tooltip(tooltipTriggerEl))
  }
  disconnect() {
    if (this.tooltip) {
      this.tooltip.dispose()
    }
  }
}
