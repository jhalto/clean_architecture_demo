import 'package:clean_architecture_demo/features/auth/domain/entities/register_response_entity.dart';

class RegisterResponseModel extends RegisterResponseEntity {
  RegisterResponseModel({required super.message, required super.subscriberId});
  factory RegisterResponseModel.fromEntity(RegisterResponseEntity entity) {
    return RegisterResponseModel(
      message: entity.message,
      subscriberId: entity.subscriberId,
    );
  }
}
