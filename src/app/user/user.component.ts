import { Component } from '@angular/core';
import { NgOptimizedImage } from '@angular/common';

@Component({
  selector: 'app-user',
  template: `
    <p>Username: {{ username }}</p>
    <p>Preferred Framework:</p>
    <ul>
      <li>
        Static Image:
        <img ngSrc="https://miro.medium.com/v2/resize:fit:640/format:webp/1*FKD2Uy_Q6r6AviZA2VD4RQ.png" alt="Angular logo" width="32" height="32" />
      </li>
      <li>
        Dynaimc Image
        <img [ngSrc]="logoUrl" [alt]="logoAlt" width="32" height="32" />
      </li>
    </ul>
  `
})
export class UserComponent {
  logoUrl = 'https://miro.medium.com/v2/resize:fit:640/format:webp/1*FKD2Uy_Q6r6AviZA2VD4RQ.png';
  logoAlt = 'Angular Logo';
  username = 'youngTech';
}
