

# Property Binding in Angular (Propiedad Vinculante en Angular)

    - Esta propiedad permite asignar valores para propiedades de elementos HTML, componentes de angular entre otras cosas.

    - Con esta propiedad puede establecer dinámicamente valores para propiedades y atributos. Puede hacer cosas como alternar funciones de botones, establecer rutas de imágenes mediante programación y compartir valores entre componentes.

    - Para vincularse al atributo de un elemento, coloque el nombre del atributo entre corchetes. Ejemplo:

                    <img alt="photo" [src]="imageURL">

                    + src: Estará vinculado a la propiedad de clase imageURL

# Event Handling (Manipulación de Eventos)

    - Permite funciones interactivas en aplicaciones web.

    - Esto es usado para responder a acciones de usuario como presionar un botón, envios de formularios y más

    - Vea el siguiente ejemplo:

                @Component({
                    ...
                    template: `<button (click)="greet()">`
                })
                class AppComponent {
                    greet() {
                        console.log('Hello, there 👋');
                    }
                }

# 