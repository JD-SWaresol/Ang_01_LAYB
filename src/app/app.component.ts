import { Component } from '@angular/core';

@Component({
  selector: 'app-root',
  template: `Hello {{ city }}, {{ 1 + 1 }}`,
  styles: `
    :host {
      color: #a144eb;
    }
  `
})
export class AppComponent {
  title = 'Ang_01_LAYB';
  city = 'San Francisco';
}
