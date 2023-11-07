import 'package:bayanatz/features/stripe_payment/data/models/PaymentIntentModel.dart';
import 'package:dio/dio.dart';

class PaymentIntentDataSource{
  Dio dio = Dio();

  createPaymentIntent(String amount) async {
    final response = await dio.post("https://api.stripe.com/v1/payment_intents",
        options: Options(
            contentType: Headers.formUrlEncodedContentType,
            headers: {
              "Authorization" : "Bearer sk_test_51O6HPLKyhgMtxNkG610TjPa2LZV5z4dstglDZww1MwU3qUatKzvCFgyMDmXb5XJU4SmDMDRjOOPsDfAXwv4PflQq00nEOm5MSP"
            }
        ),
        data: {
          "amount" : amount,
          "currency" : "USD"
        });
    return PaymentIntentModel.fromJson(response.data);
  }
}