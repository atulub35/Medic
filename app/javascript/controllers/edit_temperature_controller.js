import { Controller} from "stimulus"

export default class extends Controller {
  static targets = ["button"]

  reset() {
    this.buttonTarget.disabled = false
  }
}