import { Component, inject } from '@angular/core';
import { CarService } from './services/car.service';

@Component({
  selector: 'app-root',
  template: `
    <p>Car Listing: {{ display }}</p>
  `,
})

export class AppComponent {
  
  display = '';

  // Actualizamos para hacer la inyeccion de la propiedad carService de la Clase CarService
  constructor(private carService: CarService) {
    this.display = this.carService.getCars().join(' ⭐️ ');
  }
    
}