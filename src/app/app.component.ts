import { Component } from '@angular/core';

@Component({
  selector: 'app-root',
  template: `
    Reverse Machine: {{ word | reverse }}
  `,
})

export class AppComponent {
  word = 'You are a champion';
}