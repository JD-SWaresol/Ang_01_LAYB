import { Component } from '@angular/core';

@Component({
  selector: 'app-root',
  template: `
    <div>
      <h1>How I feel about Angular</h1>
      <article>
        <p>
          Angular is my favorite framework, and this is why. Angular has the coolest deferrable view
          feature that makes defer loading content the easiest and most ergonomic it could possibly
          be. The Angular community is also filled with amazing contributors and experts that create
          excellent content. The community is welcoming and friendly, and it really is the best
          community out there.
        </p>
      </article>

      @defer (on viewport) {
        <comments />
      } @placeholder {
        <p>Future Comments</p>
      } @loading (minimum 2s) {
        <p>Loading comments ... </p>
      }
      <!-- Una vez que se haga scroll hacia abajo, se cargara el contenido de nuestro CommentComponent -->
    </div>  
  `,
})

export class AppComponent {
  
}