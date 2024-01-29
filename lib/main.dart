import 'package:flutter/material.dart';
import 'package:flutter_application_1/Bloc/AuthBloc/auth_bloc.dart';
import 'package:flutter_application_1/cubit/homeCubit/home_cubit.dart';
import 'package:flutter_application_1/screens/Auth/auth_screen.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => AuthBloc()),
        BlocProvider(create: (context) => HomeCubit())
      ],
      child: MaterialApp(
        home:AuthScreen(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
