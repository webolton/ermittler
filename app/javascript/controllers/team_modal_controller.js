import { Controller } from '@hotwired/stimulus'

// Connects to data-controller="team-modal"
export default class extends Controller {
  connect () {
    $('#team-modal-form').modal('show')
  }

  submitEnd () {
    $('body').removeClass('modal-open')
    $('.modal-backdrop').remove()
  }
}
