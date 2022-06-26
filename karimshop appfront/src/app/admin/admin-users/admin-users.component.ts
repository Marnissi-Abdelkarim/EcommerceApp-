import { Component, OnInit } from '@angular/core';
import {CatalogueService} from "../../../services/catalogue.service";
import {AuthenticationService} from "../../../services/authentication.service";
import {Router} from "@angular/router";

@Component({
  selector: 'app-admin-users',
  templateUrl: './admin-users.component.html',
  styleUrls: ['../../../assets/vendors/fonts/google-font.css','./admin-users.component.css','../../../assets/vendors/styles/core.css'
    ,'../../../assets/vendors/styles/icon-font.css','../../../assets/src/plugins/datatables/css/dataTables.bootstrap4.min.css','../../../assets/src/plugins/datatables/css/responsive.bootstrap4.min.css','../../../assets/vendors/styles/style.css'],

})
export class AdminUsersComponent implements OnInit {
  users;
  totalLength?:number;
  page:number=1;
  constructor(public catalService:CatalogueService,public authService:AuthenticationService,private router:Router) { }

  ngOnInit(): void {
    this.getAllUsers("/getallusers");
  }

  private getAllUsers(url:string) {
    this.catalService.getResource(url).subscribe(
      data=>{this.users=data,this.totalLength=this.users.length;},
      err=>{console.log(err)}
    );
  }
  onLogout() {
    this.authService.logout();
    this.router.navigateByUrl('/');
  }

}
