import 'package:http/http.dart' as http;

class DataServices{
  String BaseUrl = "http://mark.bslmeiyu.com/api";
  getInfo() async{
    var apiurl = '/getplaces';
    http.get(Uri.parse(BaseUrl+apiurl));
  }
}