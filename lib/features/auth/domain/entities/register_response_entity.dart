import 'package:equatable/equatable.dart';

class RegisterResponseEntity extends Equatable {
  final String message;
  final int subscriberId;

  const RegisterResponseEntity({
    required this.message,
    required this.subscriberId,
  });

  @override
  List<Object?> get props => [
        message,
        subscriberId,
      ];
}