import { Component, OnInit } from '@angular/core';
import {CatalogueService} from "../../../services/catalogue.service";
import {AuthenticationService} from "../../../services/authentication.service";
import {Router} from "@angular/router";

@Component({
  selector: 'app-admin-categories',
  templateUrl: './admin-categories.component.html',
  styleUrls: ['../../../assets/vendors/fonts/google-font.css','./admin-categories.component.css','../../../assets/vendors/styles/core.css'
    ,'../../../assets/vendors/styles/icon-font.css','../../../assets/src/plugins/datatables/css/dataTables.bootstrap4.min.css','../../../assets/src/plugins/datatables/css/responsive.bootstrap4.min.css','../../../assets/vendors/styles/style.css'],

})
export class AdminCategoriesComponent implements OnInit {
  categories;
  constructor(public catalService:CatalogueService,public authService:AuthenticationService,private router:Router) { }


  ngOnInit(): void {
    this.getAllCategories("/categories");
  }
  private getAllCategories(url:string) {
    this.catalService.getResource(url).subscribe(
      data=>{this.categories=data},
      err=>{console.log(err)}
    );
  }
  onLogout() {
    this.authService.logout();
    this.router.navigateByUrl('/');
  }

}
