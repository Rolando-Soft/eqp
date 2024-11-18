import { Application } from "@hotwired/stimulus"
import Tooltip1_controller from "./tooltip1_controller";

const application = Application.start()
// Configure Stimulus development experience
application.debug = true
window.Stimulus   = application

export { application }
