import { Component } from '@angular/core';

@Component({
  selector: 'app-user',
  template: `
    Username: {{ username }}
  `
})

export class UserComponent {
  username = 'YoungTech'
}

@Component({
  selector: 'app-root',
  template: `
    <section>
      <app-user />
    </section>
  `,
})

export class AppComponent {
  title = 'Ang_01_LAYB';
}
