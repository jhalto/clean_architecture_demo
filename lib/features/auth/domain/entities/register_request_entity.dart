import 'package:equatable/equatable.dart';

class RegisterRequestEntity extends Equatable{
  final String name;
  final String email;
  final String phone;
  final String organization;
  final String designation;
  final String password;
  final String source;

  const RegisterRequestEntity({
    required this.name,
    required this.email,
    required this.phone,
    required this.organization,
    required this.designation,
    required this.password,
    required this.source,
  });
  

  @override
  List<Object?> get props => [
    name,
    email,
    phone,
    organization,
    designation,
    password,
    source,
  ];

}
