import 'package:clean_architecture_demo/features/auth/domain/usecases/register.dart';
import 'package:clean_architecture_demo/features/auth/presentation/bloc/register_event.dart';
import 'package:clean_architecture_demo/features/auth/presentation/bloc/register_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  final RegisterUseCase _registerUseCase;

  RegisterBloc(this._registerUseCase) : super(const RegisterInitial()){
    on<RegisterSubmitted>(_onRegisterSubmitted);
  }

  
  Future<void> _onRegisterSubmitted ()async{
    RegisterSubmitted event;
    Emitter<RegisterState> emit;
  }
  emit(const RegisterLoading());
  
}

 




// import 'package:clean_architecture_demo/core/resources/data_state.dart';
// import 'package:clean_architecture_demo/features/auth/domain/entities/register_response_entity.dart';
// import 'package:clean_architecture_demo/features/auth/domain/usecases/register.dart';
// import 'package:clean_architecture_demo/features/auth/presentation/bloc/register_event.dart';
// import 'package:clean_architecture_demo/features/auth/presentation/bloc/register_state.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

// class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
//   final RegisterUseCase _registerUseCase;

//   RegisterBloc(this._registerUseCase) : super(const RegisterInitial()) {
//     on<RegisterSubmitted>(_onRegisterSubmitted);
//   }

//   Future<void> _onRegisterSubmitted(
//     RegisterSubmitted event,
//     Emitter<RegisterState> emit,
//   ) async {
//     emit(const RegisterLoading());

//     final result = await _registerUseCase(event.request);

//     if (result is DataSuccess<RegisterResponseEntity>) {
//       emit(RegisterSuccess(result.data!));
//     }

//     if (result is DataFailed<RegisterResponseEntity>) {
//       final message =
//           result.error?.message ??
//           result.error?.response?.data?['message'] ??
//           'Registration failed';

//       emit(RegisterFailure(message));
//     }
//   }
// }