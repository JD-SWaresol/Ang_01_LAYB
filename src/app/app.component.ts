import { Component, Input } from '@angular/core';

@Component({
  selector: 'app-root',
  template: `
    <app-user></app-user>
  `,
})

export class AppComponent {
  
}

@Component({
  selector: 'app-user',
  template: `
    <p>The user's name is {{ name }}</p>
  `,
})

export class UserComponent {
  @Input() name = 'Gerardo';
}