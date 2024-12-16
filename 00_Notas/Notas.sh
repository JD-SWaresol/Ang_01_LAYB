

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



# RouterLink for Navigation

    - Este tipo de herramienta nos puede ayudar en el rendimiento de la vista al momento de cargar la pagina cuando tenemos mas de un modulo.

    - Esto es util con paginas grandes con un contenido donde los usuarios necesitan volver a descargar los recursos nuevamente.

    - Con 'routerLink' ya no es necesario volver a recargar toda la pagina una vez que se selecciona alguna ruta (Home/User)




# Forms Overview

    - Los formularios permiten a la app aceptar entradas de informacion del usuario.

    - Existe dos tipos de forms: Template-Driven y Reactive.





# Reactive Forms

    - Se usan cuando se quiere gestionar formularios mediante programacion en lugar de depender unicamente de plantillas.

    - Este tipo de formularios usan la clase FormControl para representar los controles del formulario (ejemplo, entradas).

    - La clase FormGroup de Angular se usa para agrupar controles de formulario en un objeto util que hace el manejo de formularios grandes sea conveniente para desarrolladores.

    - Cada 'FormGroup' debe ser asociado a una directiva [formGroup]

    - Cada 'FormControl' debe estar asociado a una directiva 'formControlName' asignada a una propiedad correspondiente.

    - ngSubmit es un evento de Angular que se usa para indicar el envio de la informacion de los elementos de un form




# Validating forms

    - Se usan dentro del escenario en el que necesitamos validar que la informacion agregada por los usuarios dentro de los inputs sea correcta antes de enviarse.

    - 'Validators' es una herramientra proporcionada por Angular para realizar las validaciones correspondientes dentro de los inputs.




# Dependecy Injection (DI)

    - Esta es una de las caracteristicas mas poderosas del framework de Angular.
    
    - DI es la capacidad de Angular para proporcionar los recursos que necesita para una aplicacion en tiempo de ejecución.

    - Una dependencia puede ser un servicio u otro recurso. 

    - Ejemplo de un Servicio Inyectable:
                  
            @Injectable({    
                providedIn: 'root'
            })
            class UserService {    
                // methods to retrieve and return data
            }

        providedIn : Indica el scope al cual el recurso o servicio va a estar disponible. Al estar en 'root' el servicio esta disponible en toda la aplicacion

    - Angular cuenta con una función conveniente para la inyeccion de un servicio en un componente llamada 'inject()'.

        Ejemplo de Inyeccion de servicio

            @Component({...})
            class PetCareDashboardComponent {    
                petRosterService = inject(PetRosterService);
            }



# Constructor-Based Dependency Injection (Inyeccion de Dependencias Basada en Constructor)

    - inject(): Es una función de patron la cual es usada para saber si existe otro patron para inyectar recursos llamado 'Constructor-Based Dependency Injection'.

    - Se tiene que especificar los recursos como parametros para la función 'constructor' de un componente. Permitiendo Angular la disposición de esos recursos para nuestros componentes.

    - Ejemplo para inyectar servicios o recursos dentro de un Componente:  

        @Component({...})
        class PetCarDashboardComponent {    
            constructor(private petCareService: PetCareService) {
                 ...    
            }
        }

        + private: Se hace uso de esta propiedad.
        + petCareService: Es la propiedad que se va a usar de la clase
        + PetCareService: Es la Clase inyectada.



# PIPIES (Tuberias)

    - Los PIPIES son funciones 'puras' que no provocan efectos secundarios.

    - Se pueden crear PIPES personalizados.

    - Angular cuenta con una serie de PIPES integradas utiles que se pueden importar y usar dentro de algun componente.

    - Ejemplo de PIPES:

        import {UpperCasePipe} from '@angular/common';
        
        @Component({
            ...    
            template: `{{ loudMessage | uppercase }}`,    
            imports: [UpperCasePipe],
        })
        class AppComponent {    
            loudMessage = 'we think you are doing great!'
        }

    - Existen varios opciones de configuracion para las PIPES.

    - Para pasar parametros a un pipe use la siguiente sintaxis. Ejemplo:

        template: `{{ date | date:'medium' }}`;

    El resultado a lo anterior seria lo siguiente:

        Jun 15, 2015, 9:43:11 PM.


# 
    

    
    
    