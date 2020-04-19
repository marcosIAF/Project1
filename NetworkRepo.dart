import 'dart:convert';

import 'package:apod/modals/api_response_model.dart';
import 'package:apod/modals/network_response.dart';
import 'package:http/http.dart' as http;

class NetworkRepo{

  Future<NetworkResponse>fetchdatafromapi() async{
try{
  final url="https://api.nasa.gov/planetary/apod?api_key=DEMO_KEY";
  var response=await http.get(url);
  var parsdresponse=await json.decode(response.body);
  APIResponseModel apiResponseModel=APIResponseModel.fromJson(parsdresponse);
  return NetworkData(apiResponseModel);
}
catch(exception){
  return NetworkException(exception.toString());
}
  }
}