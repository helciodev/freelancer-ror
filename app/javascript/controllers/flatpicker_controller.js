import { Controller } from '@hotwired/stimulus';
import flatpickr from 'flatpickr';
// Connects to data-controller="flatpicker"
export default class extends Controller {
  connect() {
    console.log('connected', this.element);
    flatpickr('.birth-date');
  }
}
