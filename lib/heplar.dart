import 'package:flutter/material.dart';

class UIHelper {
  static void showLoadingDialog(BuildContext context,tital) {
    AlertDialog loadingDialog = AlertDialog(
      content: Container(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              CircularProgressIndicator(),
              SizedBox(
                height: 30,
              ),
              Text(tital)
            ],
          ),
        ),
      ),
    );

    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (contex) {
          return loadingDialog;
        });
  }

  static void showAleartDialog(BuildContext context,tital,erro) {
    AlertDialog loadingDialog = AlertDialog(
      content: Container(
        child: Padding(
          padding: const EdgeInsets.all(5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(erro)
            ],
          ),
        ),
      ),
      title: Text(tital),
      actions: [
        TextButton(onPressed: (){
          Navigator.pop(context);
        }, child: Text("OK"))
      ],
    );

    showDialog(
        context: context,
        barrierDismissible: false,
        builder: (contex) {
          return loadingDialog;
        });
  }

}
