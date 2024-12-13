import { Component, inject } from '@angular/core';
import { CarService } from './services/car.service';

@Component({
  selector: 'app-root',
  template: `
    <p>{{ carService.getCars() }}</p>
  `,
})

export class AppComponent {
  // Hacemos la inyeccion del servicio el y este sera interpolado
  carService = inject(CarService);
}