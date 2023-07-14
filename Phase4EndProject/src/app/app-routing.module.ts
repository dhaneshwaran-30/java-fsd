import { EmployeeDashboardComponent } from './employee-dashboard/employee-dashboard.component';
import { LoginComponent } from './login/login.component';
import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';

const routes: Routes = [

  {
    path: "login", component: LoginComponent,
  },
  { path: "dashboard", component: EmployeeDashboardComponent },
  { path: "", component: LoginComponent }
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
