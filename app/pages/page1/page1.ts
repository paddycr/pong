import {Page, Alert, NavController} from 'ionic-angular';
import {Http} from 'angular2/http';
import {Inject} from 'angular2/core';

@Page({
  templateUrl: 'build/pages/page1/page1.html',
})
export class Page1 {
  constructor(http: Http, nav: NavController) {
    this.http = http;
    
    this.http.get("http://150.107.152.122:8080/api/tables")
      .subscribe(data =>{
        this.items=JSON.parse(data._body);//Bind data to items object  
       },error=>{
           console.log(error);// Error getting the data
       } );
  }
}
