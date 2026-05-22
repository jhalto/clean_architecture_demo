import 'package:equatable/equatable.dart';

abstract class RegisterState extends Equatable {
  const RegisterState();

  @override
  List<Object?> get props => [];
}

class RegisterInitial extends RegisterState {
  const RegisterInitial();
}

class RegisterLoading extends RegisterState{
  const RegisterLoading();
}

class RegisterSuccess extends RegisterState {
  const RegisterSuccess();
}
// import 'package:equatable/equatable.dart';
// import 'package:clean_architecture_demo/features/auth/domain/entities/register_response_entity.dart';

// abstract class RegisterState extends Equatable {
//   const RegisterState();

//   @override
//   List<Object?> get props => [];
// }

// class RegisterInitial extends RegisterState {
//   const RegisterInitial();
// }

// class RegisterLoading extends RegisterState {
//   const RegisterLoading();
// }

// class RegisterSuccess extends RegisterState {
//   final RegisterResponseEntity data;

//   const RegisterSuccess(this.data);

//   @override
//   List<Object?> get props => [data];
// }

// class RegisterFailure extends RegisterState {
//   final String message;

//   const RegisterFailure(this.message);

//   @override
//   List<Object?> get props => [message];
// }
