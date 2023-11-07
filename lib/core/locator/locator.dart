import 'package:bayanatz/features/stripe_payment/data/data_source/payment_intent_data_source.dart';
import 'package:bayanatz/features/stripe_payment/data/repository_impl/payment_intent_repo_impl.dart';
import 'package:bayanatz/features/stripe_payment/domain/repository/payment_intent_repo.dart';
import 'package:bayanatz/features/stripe_payment/domain/use_case/payment_intent_usecase.dart';
import 'package:bayanatz/features/stripe_payment/presentation/bloc/stripe_cubit.dart';
import 'package:get_it/get_it.dart';


final locator = GetIt.instance;

void setup() {

         // Data Source -----

  locator.registerLazySingleton<PaymentIntentDataSource>(() => PaymentIntentDataSource());
        // Cubit ------------

  locator.registerFactory(() => StripeCubit(locator()));

       // UseCases ----------

  locator.registerLazySingleton(() => PaymentIntentUseCase(locator()));

      // Repository ----------

   locator.registerLazySingleton<PaymentIntentRepo>(() => PaymentIntentRepoImpl(locator()));

}