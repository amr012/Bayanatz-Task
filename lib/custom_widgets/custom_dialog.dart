import 'package:flutter/material.dart';

messageDialog(
    {BuildContext? context,
      String? message,
      String? buttonTitle,
      Function()? onTap}){
  showDialog(context: context!, builder: (context){
    return Dialog(
      shape: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30)
      ),
      backgroundColor:  Colors.white,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
        ),
        height: 250,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Bayanatz",
                style: TextStyle(fontSize: 21,fontWeight: FontWeight.bold,color: Colors.green ),
              ),
              Center(
                child: Text(
                  message!,
                  style: TextStyle(fontSize: 16 ,color:  Colors.black),
                ),
              ),
              Padding(
                padding:  EdgeInsets.symmetric(horizontal: 25),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(.2),
                      borderRadius: BorderRadius.circular(10)
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: TextButton(onPressed: (){
                   Navigator.pop(context);
                  }, child: Text(
                    "Done",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.green
                    ),
                  )),
                ),
              )
            ],
          ),
        ),
      ),
    );
  });
}