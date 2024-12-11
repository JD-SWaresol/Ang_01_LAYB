import { Component } from '@angular/core';

@Component({
  selector: 'app-root',
  styleUrls: ['app.component.css'],
  template: `
    <!-- Haciendo esta especificacion, ahora el div es editable -->
    <div [contentEditable]="isEditable"></div>
  `,
})

export class AppComponent {
  title = 'Ang_01_LAYB';
  isEditable = true;
}
