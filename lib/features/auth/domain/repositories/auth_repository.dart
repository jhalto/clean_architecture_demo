import 'package:clean_architecture_demo/core/resources/data_state.dart';
import 'package:clean_architecture_demo/features/auth/domain/entities/register_request_entity.dart';
import 'package:clean_architecture_demo/features/auth/domain/entities/register_response_entity.dart';

abstract class AuthRepository {
   Future<DataState<RegisterResponseEntity>> getRegister(RegisterRequestEntity user);
} 