import 'package:bayanatz/features/stripe_payment/domain/use_case/payment_intent_usecase.dart';
import 'package:bayanatz/features/stripe_payment/presentation/bloc/stripe_states.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_stripe/flutter_stripe.dart';

class StripeCubit extends Cubit<StripeStates>{

  StripeCubit(this.paymentIntentUseCase) : super(StripeInitialState());

  static StripeCubit get(context) => BlocProvider.of(context);

  PaymentIntentUseCase paymentIntentUseCase;


  createPaymentIntent(String amount)async{

    emit(StripeLoading());
    final result = await paymentIntentUseCase(amount);
    result.fold((failure) {

      emit(StripeFailed());
    }, (paymentIntentEntity) async {
      
      await initPaymentSheet(paymentIntentEntity.clientSecret.toString());
      await displayPaymentSheet();
          emit(StripeSuccess());
        });
    }


  Future initPaymentSheet(String clientSecrete)async{
    await  Stripe.instance.initPaymentSheet(paymentSheetParameters:  SetupPaymentSheetParameters(
        paymentIntentClientSecret: clientSecrete,
        merchantDisplayName: "Amr"
    ));
  }

  Future displayPaymentSheet() async{
    await  Stripe.instance.presentPaymentSheet();
  }
}