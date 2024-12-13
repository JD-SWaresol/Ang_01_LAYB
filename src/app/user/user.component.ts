import { Component } from '@angular/core';

@Component({
  selector: 'app-user',
  template: `
    <p>Username: {{ username }}</p>
    <!-- Muestra el Framework que ingresemos en el campo de texto -->
    <p>{{ username }}'s favorite framework: {{ favoriteFramework }}</p>
    <label for="framework">
      <!-- Recibe el nombre tecleado del Framework -->
      Favorite Framework:
      <input id="framework" type="text" 
        [(ngModel)] ="favoriteFramework" />
    </label>
  `
})
export class UserComponent {
  //Guarda y muestra el nombre del framework que vamos a escribir en el campo de texto
  favoriteFramework = '';
  username = 'youtech';

}
