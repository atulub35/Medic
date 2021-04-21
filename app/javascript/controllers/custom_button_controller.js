// Visit The Stimulus Handbook for more details 
// https://stimulusjs.org/handbook/introduction
// 
// This example controller works with specially annotated HTML like:
//
// <div data-controller="hello">
//   <h1 data-target="hello.output"></h1>
// </div>

import { Controller } from "stimulus"

export default class extends Controller {
  static targets = ["button", "output"]
  
  initialize() {
  }
  connect() {
    debugger
    var slider = document.getElementById('test-slider');
    noUiSlider.create(slider, {
    start: [20, 80],
    connect: true,
    step: 1,
    orientation: 'horizontal', // 'horizontal' or 'vertical'
    range: {
      'min': 0,
      'max': 100
    },
    format: wNumb({
      decimals: 0
    })
    });
    // this.buttonTarget.textContent = 'Print'
  }

  reset() {
    console.log('heheheheheeh')
    console.log(this.buttonTarget)
    // this.element.reset()
    this.buttonTarget.disabled = true

    this.outputTarget.textContent = 'Stimulus printefffffd me!'
  }

  greet() {
    console.log("Hello, Stimulus!", this.element)
  }
}
