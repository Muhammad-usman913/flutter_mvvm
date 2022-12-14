import 'package:flutter_mvvm/data/network/BaseApiServices.dart';
import 'package:flutter_mvvm/data/network/NetworkApiService.dart';
import 'package:flutter_mvvm/res/app_url.dart';

class AuthRepository{

  BaseApiServices _apiServices = NetworkApiService();

  Future<dynamic> loginApi(dynamic data)async{
    try{
      dynamic response = _apiServices.getPostApiResponse(AppUrl.loginEndPoint, data);
      return response;
    }catch(e){
      throw e;
    }
  }

  Future<dynamic> registerApi(dynamic data)async{
    try{
      dynamic response = _apiServices.getPostApiResponse(AppUrl.registerApiEndPoint, data);
      return response;
    }catch(e){
      throw e;
    }
  }

}