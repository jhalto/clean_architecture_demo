import 'package:clean_architecture_demo/config/routes/app_routes.dart';
import 'package:clean_architecture_demo/config/routes/route_names.dart';
import 'package:clean_architecture_demo/core/di/injection_container.dart';
import 'package:clean_architecture_demo/features/auth/data/data_sources/remote/auth_api_service.dart';
import 'package:clean_architecture_demo/features/auth/data/repositories/auth_repository_impl.dart';
import 'package:clean_architecture_demo/features/auth/domain/usecases/register.dart';
import 'package:clean_architecture_demo/features/auth/presentation/bloc/register_bloc.dart';
import 'package:clean_architecture_demo/features/auth/presentation/views/register_view.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

void main() async {
  await dotenv.load(fileName: ".env.dev");
  await initDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
 
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      initialRoute: Routes.registration,
      onGenerateRoute: AppRoutes.onGenerateRoute,
    );
  }
}
