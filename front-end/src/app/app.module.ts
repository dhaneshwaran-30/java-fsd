import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';
import { HttpClientModule } from '@angular/common/http';
import { FormsModule, ReactiveFormsModule } from '@angular/forms';
import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { AdmindashboardComponent } from './admindashboard/admindashboard.component';
import { AllusersComponent } from './allusers/allusers.component';
import { EditusersComponent } from './editusers/editusers.component';
import { FooterComponent } from './footer/footer.component';
import { HeaderComponent } from './header/header.component';
import { HomeComponent } from './home/home.component';
import { LoginComponent } from './login/login.component';
import { SignupComponent } from './signup/signup.component';
import { UserdashboardComponent } from './userdashboard/userdashboard.component';

@NgModule({
  declarations: [
    AppComponent,
    AdmindashboardComponent,
    AllusersComponent,
    EditusersComponent,
    FooterComponent,
    HeaderComponent,
    HomeComponent,
    LoginComponent,
    SignupComponent,
    UserdashboardComponent
  ],
  imports: [
    BrowserModule,
    AppRoutingModule, HttpClientModule, FormsModule, ReactiveFormsModule
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
