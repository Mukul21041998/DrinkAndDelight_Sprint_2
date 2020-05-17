import { NgModule } from '@angular/core';
import { Routes, RouterModule } from '@angular/router';
import { UpdateRawMaterialStockComponent } from './update-raw-material-stock/update-raw-material-stock.component';
import { DisplayDistributorDetailsComponent } from './display-distributor-details/display-distributor-details.component';
import { HomeComponent } from './home/home.component';


const routes: Routes = [
  {path : "", component : HomeComponent},
  {path : "update", component: UpdateRawMaterialStockComponent},
  {path : "display", component: DisplayDistributorDetailsComponent}
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
