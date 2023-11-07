import 'package:bayanatz/features/stripe_payment/domain/entites/PaymentIntentEntity.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/errors/failure.dart';

abstract class PaymentIntentRepo{

  Future<Either<Failure , PaymentIntentEntity>> createPaymentIntent(String amount);
}

