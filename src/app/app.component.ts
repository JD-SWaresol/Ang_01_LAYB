import { Component } from '@angular/core';
import { FormControl, Validators } from '@angular/forms';
import { FormGroup } from '@angular/forms';

@Component({
  selector: 'app-root',
  template: `
    <form [formGroup]="profileForm" (ngSubmit)="handleSubmit()">
      <label>Name
          <input type="text" formControlName="name" />
      </label>
      <label>Email
          <input type="email" formControlName="email" />
      </label>
      <!-- Podemos determinar que este boton este desabilitado hasta que los campos tengan la información Valida 
            para ellos indicamos que el form de la clase FormControl llamado 'profile.Form' sea valido -->
      <button type="submit" [disabled]="!profileForm.valid">Submit</button>
    </form>
  `,
})

export class AppComponent {
  profileForm = new FormGroup({
    name: new FormControl('', Validators.required),
    email: new FormControl('', [Validators.required, Validators.email])
  });

  handleSubmit(){
    alert(this.profileForm.value.name + ' | ' + this.profileForm.value.email);
  }
}