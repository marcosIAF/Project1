import 'package:apod/modals/api_response_model.dart';

class NetworkResponse{
}

class NetworkData extends NetworkResponse{
  APIResponseModel apiResponseModel;
  NetworkData(this.apiResponseModel);
}
class NetworkException extends NetworkResponse{
  String errormessage;
  NetworkException(this.errormessage);
}