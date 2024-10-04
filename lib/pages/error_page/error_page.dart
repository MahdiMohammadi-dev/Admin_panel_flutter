import 'package:admin_panel_web/widgets/custom_text.dart';
import 'package:flutter/material.dart';

class ErrorPage extends StatelessWidget {
  const ErrorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/images/error.png',width: 350,),
          const SizedBox(height: 10,),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomText(text: 'Page Not Found...!', size: 24, color: Colors.black, weight: FontWeight.bold),
            ],
          )
        ],
      ),
    );
  }
}
