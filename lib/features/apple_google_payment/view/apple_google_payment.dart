import 'dart:io';

import 'package:flutter/material.dart';
import 'package:pay/pay.dart';

import '../../../core/payment_config/payment_config.dart';

class AppleAndGooglePaymentScreen extends StatefulWidget {
  const AppleAndGooglePaymentScreen({super.key});

  @override
  State<AppleAndGooglePaymentScreen> createState() => _AppleAndGooglePaymentScreenState();
}

class _AppleAndGooglePaymentScreenState extends State<AppleAndGooglePaymentScreen> {
  String os = Platform.operatingSystem;

  var applePayButton = ApplePayButton(
    paymentConfiguration: PaymentConfiguration.fromJsonString(defaultApplePay),
    paymentItems: const [
      PaymentItem(
        label: 'Mouse',
        amount: '10',
        status: PaymentItemStatus.final_price,
      ),


    ],
    style: ApplePayButtonStyle.black,
    width: double.infinity,
    height: 50,
    type: ApplePayButtonType.buy,
    margin: const EdgeInsets.only(top: 15.0),
    onPaymentResult: (result) => debugPrint('Payment Result $result'),
    loadingIndicator: const Center(
      child: CircularProgressIndicator(),
    ),
  );

  var googlePayButton = GooglePayButton(
    paymentConfiguration: PaymentConfiguration.fromJsonString(defaultGooglePay),
    paymentItems: const [
      PaymentItem(
        label: 'Mouse',
        amount: '10',
        status: PaymentItemStatus.final_price,
      )
    ],
    type: GooglePayButtonType.pay,
    margin: const EdgeInsets.only(top: 15.0),
    onPaymentResult: (result) => debugPrint('Payment Result $result'),
    loadingIndicator: const Center(
      child: CircularProgressIndicator(),
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Platform.isIOS ? applePayButton : googlePayButton;
  }
}