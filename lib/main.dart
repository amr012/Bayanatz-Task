import 'package:bayanatz/features/splash/splash_screen.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';

import 'core/bloc_observer/bloc_observer.dart';
import 'core/locator/locator.dart';
import 'features/home/home_screen/home_screen.dart';
import 'features/paypal_payment/paypal_payment_screen.dart';
import 'features/success/success_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = MyBlocObserver();
  setup();
  Stripe.publishableKey = "pk_test_51O6HPLKyhgMtxNkGWPdeywWM9a8InbHrbIx46etX5xECP7jDLF4tXjVq6zM3JS2JE4TeccmdoKZFyrUuJJZp6AqD00IXebxvW6";

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}


