
import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mvvm/repository/auth_repository.dart';
import 'package:flutter_mvvm/utils/routes/routes_name.dart';

import '../utils/utils.dart';

class AuthViewModel with ChangeNotifier{
  final _myRepo = AuthRepository();

  bool _loading = false;
  bool get loading => _loading;

  setLoading(bool value){
    _loading = value;
    notifyListeners();
  }



  bool _signUpLoading = false;
  bool get signUploading => _loading;
  setSignUPLoading(bool value){
    _signUpLoading = value;
    notifyListeners();
  }
 //Login
  Future<void> loginApi(dynamic data,BuildContext context) async{
    setLoading(true);
   _myRepo.loginApi(data).then((value)async{
    setLoading(false);
     if(kDebugMode){
       Utils.flushBarErrorMessage('Login Successfully', context);
       Navigator.pushNamed(context, RoutesName.home);
       print(value.toString());
     }
   }).onError((error, stackTrace){
     setLoading(false);
     if(kDebugMode){
       Utils.flushBarErrorMessage(error.toString(), context);
       print(error.toString());
     }
   });
  }
//Sign Up
  Future<void> signUpApi(dynamic data,BuildContext context) async{
    setLoading(true);
    _myRepo.registerApi(data).then((value)async{
      setLoading(false);
      if(kDebugMode){
        Utils.flushBarErrorMessage('Register Successfully', context);
        Navigator.pushNamed(context, RoutesName.home);
        print(value.toString());
      }
    }).onError((error, stackTrace){
      setLoading(false);
      if(kDebugMode){
        Utils.flushBarErrorMessage(error.toString(), context);
        print(error.toString());
      }
    });
  }

}