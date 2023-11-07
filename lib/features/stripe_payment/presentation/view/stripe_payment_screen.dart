import 'package:bayanatz/features/stripe_payment/presentation/bloc/stripe_cubit.dart';
import 'package:bayanatz/features/stripe_payment/presentation/bloc/stripe_states.dart';
import 'package:bayanatz/features/success/success_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bayanatz/core/locator/locator.dart' as di;

import '../../../../custom_widgets/custom_dialog.dart';

class StripePaymentScreen extends StatelessWidget {
   StripePaymentScreen({Key? key}) : super(key: key);

 StripeCubit? stripeCubit;

  @override
  Widget build(BuildContext context) {
    return  BlocProvider(create: (context)=> di.locator<StripeCubit>(),
     child: BlocConsumer<StripeCubit,StripeStates>(
         listener: (context,state){
           if(state is StripeSuccess){
             Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=> SuccessScreen()),(route) => false,);
           }else if(state is StripeFailed){
             messageDialog(
                 context: context,
                 buttonTitle: "done",
                 message: "Some Thing Went Wrong!"
             );
           }
         },
         builder: (context,state){
           stripeCubit = StripeCubit.get(context);
       return GestureDetector(
         onTap: (){
           stripeCubit!.createPaymentIntent("1000");
         },
         child: state is StripeLoading ? CircularProgressIndicator(color: Colors.green,) : Container(
           decoration: BoxDecoration(
             borderRadius: BorderRadius.circular(15),
             border: Border.all(color: Colors.black.withOpacity(.7))
           ),
           padding: EdgeInsets.symmetric(horizontal: 20,vertical: 5),
           child: Image.asset("assets/icons/visa_icon.png",height: 40,width: 80,),
         ),
       );
     }, ),);
  }
}
