import { Controller } from '@hotwired/stimulus';

export default class extends Controller {
  connect() {
    console.log('Hello swiper!');
    this.swiper = new Swiper('.swiper-container', {
      // Swiper configuration options
      pagination: {
        el: '.swiper-pagination',
      },
      navigation: {
        nextEl: '.swiper-button-next',
        prevEl: '.swiper-button-prev',
      },
    });
  }
}
