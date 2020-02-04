import 'dart:async';
import 'package:http/http.dart' as http;

//const api_v1 = "https://api.myjson.com/bins";
const api_v1 = "http://192.168.23.10/sextan_api/public/api/v1";

class UsersList {
  static Future getActiveUsers() {
    //var urlUsrList = api_v1 + "/86ekq";
    var urlUsrList = api_v1 + "/show-contacts/";
    return http.get(urlUsrList);
  }
}