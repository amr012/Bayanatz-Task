import 'package:bayanatz/core/errors/failure.dart';
import 'package:bayanatz/features/stripe_payment/data/data_source/payment_intent_data_source.dart';
import 'package:bayanatz/features/stripe_payment/domain/entites/PaymentIntentEntity.dart';
import 'package:bayanatz/features/stripe_payment/domain/repository/payment_intent_repo.dart';
import 'package:dartz/dartz.dart';

class PaymentIntentRepoImpl implements PaymentIntentRepo{

  PaymentIntentDataSource paymentIntentDataSource;

  PaymentIntentRepoImpl(this.paymentIntentDataSource);
  @override
  Future<Either<Failure, PaymentIntentEntity>> createPaymentIntent(String amount) async{
    try {
      return Right(await paymentIntentDataSource.createPaymentIntent(amount));
    } catch (e) {
    print(e.toString());
    return Left(Failure(e.toString()));
    }
  }
}