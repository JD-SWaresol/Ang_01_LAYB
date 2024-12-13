import { NgModule } from '@angular/core';
import { BrowserModule, provideClientHydration } from '@angular/platform-browser';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { CommentsComponent } from './comments/comments.component';
import { UserComponent } from './user/user.component';
import { RouterOutlet } from '@angular/router';

@NgModule({
  declarations: [
    AppComponent,
    CommentsComponent,
    UserComponent
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    RouterOutlet
  ],
  providers: [
    provideClientHydration()
  ],
  bootstrap: [AppComponent]
})
export class AppModule { }
