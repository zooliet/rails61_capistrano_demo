import { Controller } from "stimulus"

export default class extends Controller {
  static targets = ["element"]
  close() {
    this.elementTarget.remove()    
  }
}
