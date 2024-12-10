import { Component } from '@angular/core';

@Component({
  selector: 'app-root',
  template: `
    @if (isServerRunning){
      <span>Yes, the server is running</span>
    }
    @else {
      <span>No, the server is not running</span>
    }
  `,
})

export class AppComponent {
  title = 'Ang_01_LAYB';
  isServerRunning: boolean = true;
}
