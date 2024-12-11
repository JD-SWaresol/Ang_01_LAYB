

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


# Component Communication with @Input

    - Se usa cuando se requiere que se envien datos a un componente, los datos pueden ser usador para personalizar un componente.

    - Aveces tambien se requiere el envio de informacion de un componente padre a un componente hijo.

    - El concepto 'Input' es similar a 'props' en otros frameworks.

    - Ejemplo de como se agrega una propiedad 'Input':

        1.- Se agrega el imput dentro de un componente

            class UserComponent {
                @Input() occupation = '';
            }

        2.- Cuando se este listo para pasar los valores en un valor a traves de 'Input' los valores se pueden asignar a plantillas usando la sintaxis de atributos.

            @Component({
                ...
                template: `<app-user occupation="Angular Developer"></app-user>`
            })
            class AppComponent {}

        3.- Asegurate que la propiedad occupation esta en tu UserComponent

            @Component({
                ...
                template: `<p>The user's occupation is {{occupation}}</p>`
            })

#