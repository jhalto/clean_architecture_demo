import 'package:clean_architecture_demo/features/auth/domain/entities/register_request_entity.dart';
import 'package:equatable/equatable.dart';

abstract class RegisterEvent extends Equatable {
  const RegisterEvent();

  @override
  List<Object?> get props => [];
}

class RegisterSubmitted extends RegisterEvent {
  final RegisterRequestEntity request;

  const RegisterSubmitted(this.request);

  @override
  List<Object?> get props => [request];
}


// import 'package:equatable/equatable.dart';
// import 'package:clean_architecture_demo/features/auth/domain/entities/register_request_entity.dart';

// abstract class RegisterEvent extends Equatable {
//   const RegisterEvent();

//   @override
//   List<Object?> get props => [];
// }

// class RegisterSubmitted extends RegisterEvent {
//   final RegisterRequestEntity request;

//   const RegisterSubmitted(this.request);

//   @override
//   List<Object?> get props => [request];
// }