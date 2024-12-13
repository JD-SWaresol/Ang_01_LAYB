import { Component } from '@angular/core';

@Component({
  selector: 'app-user',
  template: `
    <p>Username: {{ username }}</p>
    <p>Framework: {{ favoriteFramework }}</p>
    <label for="framework">
      Favorite Framework:
      <input id="framework" type="text" 
        [(ngModel)] ="favoriteFramework" />
    </label>
    <button (click)="showFramework()">Show Framework</button>
  `
})
export class UserComponent {
  favoriteFramework = '';
  username = 'youtech';

  showFramework(){
    alert(this.favoriteFramework);
  }

}
