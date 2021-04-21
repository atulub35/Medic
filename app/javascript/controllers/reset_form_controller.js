import { Controller} from "stimulus"

export default class extends Controller {
  static targets = ["button"]

  reset() {
    debugger
    this.element.reset()
    this.buttonTarget.disabled = false
  }
}