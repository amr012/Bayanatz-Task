import 'package:bayanatz/features/stripe_payment/domain/entites/PaymentIntentEntity.dart';
import 'package:bayanatz/features/stripe_payment/domain/repository/payment_intent_repo.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/errors/failure.dart';

class PaymentIntentUseCase{

  final PaymentIntentRepo paymentIntentRepo;

  PaymentIntentUseCase(this.paymentIntentRepo);

  Future<Either<Failure, PaymentIntentEntity>> call(String amount) async {
    return await paymentIntentRepo.createPaymentIntent(amount);
  }
}