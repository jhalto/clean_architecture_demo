import 'package:clean_architecture_demo/core/resources/data_state.dart';
import 'package:clean_architecture_demo/features/auth/domain/entities/register_request_entity.dart';
import 'package:clean_architecture_demo/features/auth/domain/entities/register_response_entity.dart';
import 'package:clean_architecture_demo/features/auth/domain/repositories/auth_repository.dart';

class RegisterUseCase {
  final AuthRepository _userRepository;

  const RegisterUseCase(this._userRepository);

  Future<DataState<RegisterResponseEntity>> call(RegisterRequestEntity user) {
    return _userRepository.getRegister(user);
  }
}
