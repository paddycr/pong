import {Platform, Page} from 'ionic-angular';
import {Http} from 'angular2/http';
import {Inject} from 'angular2/core';

@Page({
  templateUrl: 'build/pages/page1/page1.html',
})
export class Page1 {
  constructor(http: Http, platform: Platform) {
    this.http = http;
    this.platform = platform;

    this.http.get("http://ponglondon.s3-website-us-west-2.amazonaws.com/")
      .subscribe(data =>{
        this.items=JSON.parse(data._body);//Bind data to items object  
       },error=>{
           console.log(error);// Error getting the data
       } );
  }
buttonClick(event){
  console.log("button clicked");
  console.log(event);
}
 
itemClicked(event,itemData){
 console.log("item clicked"); 
 console.log(event);
 console.log(itemData);
}

 launch(url) {
   this.platform.ready().then(() => {
     cordova.InAppBrowser.open(url, "_system", "location=no");
   });
 }
}
