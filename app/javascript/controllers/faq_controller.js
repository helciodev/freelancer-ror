import { Controller } from '@hotwired/stimulus';

// Connects to data-controller="faq"
export default class extends Controller {
  static targets = ['question'];

  logSomething() {
    this.questionTargets.forEach((element) => {
      // rotate-180 transform
      const arrow = element.children[1];
      const answer = element.nextElementSibling;

      arrow.classList.toggle('rotate-arrow');
      answer.classList.toggle('hidden');
    });
  }
}
