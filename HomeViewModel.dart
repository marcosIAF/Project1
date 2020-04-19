import 'package:apod/modals/api_response_model.dart';
import 'package:apod/modals/network_response.dart';
import 'package:apod/repo/NetworkRepo.dart';
import 'package:flutter/cupertino.dart';

class HomeViewModel extends ChangeNotifier{
  APIResponseModel apiResponseModel;
  String message="";
  bool isloading=false;

  void getdata() async{

    isloading=true;
    notifyListeners();
    //NetworkResponse networkResponse=await NetworkRepo().fetchdatafromapi();
    NetworkResponse networkResponse =
    await NetworkRepo().fetchdatafromapi();

    if(networkResponse is NetworkData)
      apiResponseModel=networkResponse.apiResponseModel;
    else if(networkResponse is NetworkException)
      message=networkResponse.errormessage;

    isloading=false;
    notifyListeners();
  }
}