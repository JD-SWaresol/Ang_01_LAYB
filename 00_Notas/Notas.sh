

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


# Component Communication with @Output

    - Este tipo de componente se usa cuando se requiere notificar a otros componentes que algo ha ocurrido.

    - Notifica sobre eventos como botones presionados, elementos de listas eliminados o alguna cosa importante que haya ocurrido.

    - En este tipo de escenarios los componentes necesitan comunicarse con los componentes padre.



# Deferrable Views (Vistas aplazables)

    - Este tipo de vistas son usadas para aplazar la carga de una sección de su plantilla de componentes.

    - Las vistas aplazables son usadas en las situaciones en las que al tener muchos componentes con su respectiva referencia en la aplicacion, pero sin tener que cargarlo de forma inmediata.

    - Ejemplo sobre como trabajar con Deferrable Views:
    
        1.- Genera un codigo basico de tipo '@defer'. En ese bloque se cargan los comentarios del componente 'comment'.

            Al envolver comment Component con '@defer' se pospone la carga

                @defer {  
                    <comments />
                }
        
        2.- Coloca un bloque '@placeholder' donde se coloca el HTML que se mostrara antes de que inicie la carga diferida (aplazable).

            El contenido de '@placeholder' se carga con entusiasmo.

                @defer {  
                    <comments />
                } @placeholder {  
                    <p>Future comments</p>
                }

        3.- Coloca un bloque '@loading' en donde se colocará el contenido HTML que se va a mostrar mientras el contenido diferido (aplazable) se recupera activamente, pero aun no ha finzalizado.  

                @defer {  
                    <comments />
                } @placeholder {  
                    <p>Future comments</p>
                } @loading {  
                    <p>Loading comments...</p>
                }

        4.- Agregamos dentro de '@loading' un tiempo de duracion minimo para cargar el contenido de comment Components.

            NOTA: También se puede agregar un tiempo minimo de duracion para '@placeholder'

                @defer {  
                    <comments />
                } @placeholder {  
                    <p>Future comments</p>
                } @loading (minimum 2s) {  
                    <p>Loading comments...</p>
                }
    
        5.- Agregamos el Activador de Vista grafica (Viewport Trigger) para que el cotenido difiera la carga una vez que ingrese a la ventana gráfica.

            Un Viewport trigger se usa mejor cuando se pospone contenido que esta lo suficientemente abajo en la página como para que sea necesario desplazarse para verlo.

                @defer (on viewport) {  
                    <comments />
                }
            El contenido se muestra cuando se hace scroll hacia abajo despues de tener mucha informacion.


# Optimizing images (Optimizando imagenes)

    - El tema de las imagenes puede ser un importante contribuyente para los problemas de rendimiento de las aplicaciones.

    - Para evitar ser tan complejo, Angular maneja el tema de Optimizacion de imagenes con la directiva 'NGOpmizedImage'.



# Routing Overview (Ruteo Descripcion)


    - El enrutamiento nos puede ayudar cuando se llega al punto donde una aplicacion requiere tener mas de una pagina.

    