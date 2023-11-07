import 'package:flutter/material.dart';

import '../home/home_screen/home_screen.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,

        children: [
          Container(
            height: 100,
            width: 100,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.green
            ),
            child: const Center(
              child: Icon(
                Icons.check,
                color: Colors.white,
                size: 35,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20.0,bottom: 40),
            child: Text("Successful Operation",
            style: TextStyle(
              fontSize: 20
            ),),
          ),

          Container(
            decoration: BoxDecoration(
              color: Colors.grey.withOpacity(.2),
              borderRadius: BorderRadius.circular(10)
            ),
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: TextButton(onPressed: (){
              Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=> HomeScreen()),(route) => false,);
            }, child: Text(
              "Ok",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.green
              ),
            )),
          ),
          SizedBox(width: double.infinity,)
        ],
      ),
    );
  }
}
