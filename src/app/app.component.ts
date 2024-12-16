import { Component, inject } from '@angular/core';
import { LowerCasePipe } from '@angular/common';

@Component({
  selector: 'app-root',
  template: `
    {{ username | lowercase }}
  `,
})

export class AppComponent {
  
  username = 'yOunGTECh';
    
}