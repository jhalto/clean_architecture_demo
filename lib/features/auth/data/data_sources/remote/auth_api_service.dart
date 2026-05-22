import 'dart:io';

import 'package:clean_architecture_demo/core/const/urls.dart';
import 'package:clean_architecture_demo/features/auth/data/models/register_request_model.dart';
import 'package:dio/dio.dart';

class AuthApiService {
  final Dio dio;

  AuthApiService({required this.dio});

  Future<Response<dynamic>> register({
    required RegisterRequestModel user,
  }) async {
    final url = Urls.register;
    // have to remove String and dynamic to check if it is work without passing it or not
    Map<String, dynamic> body = user.toJson();
    body['auth_token'] = Urls.auth;
  
      final response = await dio.post(url, data: body, options: Options(
        validateStatus: (status) {
          return status != null && status< 500;
        },
      ));

      return response;
    
  }
}
