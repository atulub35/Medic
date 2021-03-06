// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

// import Rails from "@rails/ujs"
// import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"

import 'materialize-css/dist/js/materialize'
import '@hotwired/turbo-rails'
// Rails.start() // TODO: remove ujs when turbo streams are inplemented
// Turbolinks.start()
ActiveStorage.start()

require("trix")
require("@rails/actiontext")
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .
