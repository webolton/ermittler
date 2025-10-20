# Pin npm packages by running ./bin/importmap


pin "jquery", to: 'https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.min.js'
pin "@popperjs/core", to: "https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/lib/index.js"

pin "application"
pin "@hotwired/turbo-rails", to: "turbo.min.js"
pin "@hotwired/stimulus", to: "stimulus.min.js"
pin "@hotwired/stimulus-loading", to: "stimulus-loading.js"
pin_all_from "app/javascript/controllers", under: "controllers"
