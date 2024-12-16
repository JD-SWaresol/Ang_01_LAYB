import { Component, inject } from '@angular/core';
import { CarService } from './services/car.service';

@Component({
  selector: 'app-root',
  template: `
    <p>Car Listing: {{ display }}</p>
  `,
})

export class AppComponent {
  // Hacemos la inyeccion del servicio el y este sera interpolado
  carService = inject(CarService);

  display = '';

  constructor() {
    // Guardamos dentro de display los autos listados y unidos por star    
    this.display = this.carService.getCars().join(' ⭐️ ');
  }
    
}