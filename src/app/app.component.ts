import { Component } from '@angular/core';

@Component({
  selector: 'app-root',
  template: `
    <li>Number with "decimal" {{ num | number:"3.2-2" }}</li>
    <li>Date with "date" {{ birthday | date: 'medium' }}</li>
    <li>Currency with "currency" {{ cost | currency }}</li>
  `,
})

export class AppComponent {
  
  num = 103.1234;
  birthday = new Date(2023, 3, 2);
  cost = 4560.34;

}