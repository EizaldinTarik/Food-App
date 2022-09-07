import 'package:flutter/material.dart';
import 'package:food_app/presentations/screens/welcome_screen.dart';

void main() {
  runApp(const FoodApp());
}

class FoodApp extends StatelessWidget {
  const FoodApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return
        // MultiBlocProvider(
        // providers: [
        //   BlocProvider(
        //     create: (context) => AuthLoginBloc(
        //       LoginInitState(),
        //       AuthLoginRepository(),
        //     ),
        //   ),
        // ],
        // child:
        MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const WelcomeScreen(),
      },
    );
  }
}
