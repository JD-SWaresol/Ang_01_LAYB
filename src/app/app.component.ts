import { Component } from '@angular/core';

@Component({
  selector: 'app-root',
  template: `
    <!-- Debido a que vamos a desplazar el mouse, indicamos que este llamara a la funcion onMouseOver() --> 
    <section (mouseover)="onMouseOver()">
      This is my secret message:
       {{ message }}
    </section>
  `,
})

export class AppComponent {
  message = '';

  // Metodo que muestra el mensaje
  onMouseOver() {
    this.message = 'Way to go!!!';
  }
}
