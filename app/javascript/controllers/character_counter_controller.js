import { Controller } from "@hotwired/stimulus"

export default class extends Controller {
  static targets = [ "input", "output" ]

  connect() {
    this.update()
  }

  update() {
    const count = this.inputTarget.value.length
    this.outputTarget.textContent = `${count} caracteres`
  }
}