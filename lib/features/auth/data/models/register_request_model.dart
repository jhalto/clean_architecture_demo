import 'package:clean_architecture_demo/features/auth/domain/entities/register_request_entity.dart';
import 'package:clean_architecture_demo/features/auth/domain/entities/register_response_entity.dart';

class RegisterRequestModel extends RegisterRequestEntity {
  const RegisterRequestModel({
    required super.name,
    required super.email,
    required super.organization,
    required super.designation,
    required super.phone,
    required super.source,
    required super.password,
  });

  factory RegisterRequestModel.fromEntity(RegisterRequestEntity entity) {
    return RegisterRequestModel(
      name: entity.name,
      email: entity.email,
      organization: entity.organization,
      designation: entity.designation,
      phone: entity.phone,
      source: entity.source,
      password: entity.password,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'ContactPerson': name,
      'Email': email,
      'Phone': phone,
      'Designation': designation,
      'Organization': organization,
      'Password': password,
      'source': source,
    };
  }
}
