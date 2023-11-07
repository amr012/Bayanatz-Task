import 'dart:developer';

import 'package:bayanatz/custom_widgets/custom_dialog.dart';
import 'package:bayanatz/features/success/success_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_paypal_payment/flutter_paypal_payment.dart';



class PaypalPaymentScreen extends StatelessWidget {
  const PaypalPaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        Navigator.of(context).push(MaterialPageRoute(
          builder: (BuildContext context) => PaypalCheckoutView(
            sandboxMode: true,
            clientId: "AYzlUzoiwNkYu774uB-IOuJ9WUkdu3Uzc7gzMNoe4INrg1sd2n7Jwpt-N57Ir4545-HxLptmvqlR88J6",
            secretKey: "EL7wCgFYPtwGNHXSC5JWLIvSssiNguU1kvhetjHpYR7-bZBg8zVw2-UjZGarOFMAIc5qscL3GQG14ITZ",
            transactions: const [
              {
                "amount": {
                  "total": '10',
                  "currency": "USD",
                  "details": {
                    "subtotal": '10',
                    "shipping": '0',
                    "shipping_discount": 0
                  }
                },
                "description": "The payment transaction description.",
                // "payment_options": {
                //   "allowed_payment_method":
                //       "INSTANT_FUNDING_SOURCE"
                // },
                "item_list": {
                  "items": [
                    {
                      "name": "Mouse",
                      "quantity": 1,
                      "price": '10',
                      "currency": "USD"
                    },
                  ],

                }
              }
            ],
            note: "Hello",
            onSuccess: (Map params) async {
              log("onSuccess: $params");
              Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=> SuccessScreen()),(route) => false,);
            },
            onError: (error) {
              log("onError: $error");
              Navigator.pop(context);
              messageDialog(
                context: context,
                buttonTitle: "done",
                message: "Some Thing Went Wrong!"
              );
            },
            onCancel: () {
              print('cancelled:');
              Navigator.pop(context);
            },
          ),
        ));
      },
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            border: Border.all(color: Colors.black.withOpacity(.7))
        ),
        padding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
        child: Image.asset("assets/icons/paypal_icon.png",height: 40,width: 80,),
      ),
    );
  }
}