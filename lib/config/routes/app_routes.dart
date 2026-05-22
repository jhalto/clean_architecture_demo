import 'package:clean_architecture_demo/config/routes/route_names.dart';
import 'package:clean_architecture_demo/core/di/injection_container.dart';
import 'package:clean_architecture_demo/features/auth/presentation/bloc/register_bloc.dart';
import 'package:clean_architecture_demo/features/auth/presentation/views/register_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRoutes {
  const AppRoutes._();

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.registration:
        return MaterialPageRoute(
          builder: (_) => BlocProvider<RegisterBloc>(
            create: (_) => sl<RegisterBloc>(),
            child: const RegisterView(),
          ),
        );

      

      default:
        return MaterialPageRoute(
          builder: (_) => const Scaffold(
            body: Center(
              child: Text("Page not found"),
            ),
          ),
        );
    }
  }
}