import 'package:clean_architecture_demo/core/resources/data_state.dart';
import 'package:clean_architecture_demo/features/auth/data/data_sources/remote/auth_api_service.dart';
import 'package:clean_architecture_demo/features/auth/data/models/register_request_model.dart';
import 'package:clean_architecture_demo/features/auth/data/models/register_response_model.dart';
import 'package:clean_architecture_demo/features/auth/domain/entities/register_request_entity.dart';
import 'package:clean_architecture_demo/features/auth/domain/entities/register_response_entity.dart';
import 'package:clean_architecture_demo/features/auth/domain/repositories/auth_repository.dart';
import 'package:dio/dio.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthApiService _authApiService;

  AuthRepositoryImpl({
    required AuthApiService authApiService,
  }) : _authApiService = authApiService;

  @override
  Future<DataState<RegisterResponseEntity>> getRegister(
    RegisterRequestEntity request,
  ) async {
    try {
      final requestModel = RegisterRequestModel.fromEntity(request);

      final response = await _authApiService.register(user: requestModel);

      if (response.statusCode == 201) {
        final registerResponse = RegisterResponseModel.fromEntity(response.data);

        return DataSuccess<RegisterResponseEntity>(registerResponse);
      }

      return DataFailed<RegisterResponseEntity>(
        DioException(
          requestOptions: response.requestOptions,
          response: response,
          message: _getErrorMessage(response),
        ),
      );
    } on DioException catch (e) {
      return DataFailed<RegisterResponseEntity>(e);
    }
  }

  String _getErrorMessage(Response response) {
    if (response.statusCode == 422) {
      final errors = response.data['errors'];

      if (errors != null) {
        return errors.values.map((e) => e[0]).join('\n');
      }

      return 'Validation failed';
    }

    if (response.statusCode == 401) {
      return 'Unauthorized';
    }

    return response.data?['message'] ?? 'Registration failed';
  }
}