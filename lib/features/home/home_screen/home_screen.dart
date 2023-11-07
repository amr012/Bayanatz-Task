import 'package:bayanatz/features/paypal_payment/paypal_payment_screen.dart';
import 'package:flutter/material.dart';

import '../../apple_google_payment/view/apple_google_payment.dart';
import '../../stripe_payment/presentation/view/stripe_payment_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 25),
              child: Image.asset("assets/images/mouse.jpg"),
            ),
            Row(
              children: [
                Text("Total : 10 \$",style: TextStyle(
                  fontSize: 20,
                  color: Colors.black
                ),)
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0),
              child: Row(
                children: [
                  Text("Discount : 0 \$",style: TextStyle(
                    fontSize: 20,
                    color: Colors.black
                  ),)
                ],
              ),
            ),
            Divider(thickness: 2),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 15.0),
              child: Row(
                children: [
                  Text("Choose Your Payment Method:",style: TextStyle(
                      fontSize: 17,
                      color: Colors.black,
                    fontWeight: FontWeight.bold
                  ),)
                ],
              ),
            ),

            StripePaymentScreen(),
            const SizedBox(height: 10,),
            PaypalPaymentScreen(),
            AppleAndGooglePaymentScreen(),

          ],
        ),
      ),
    );
  }
}
