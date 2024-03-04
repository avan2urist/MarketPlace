import 'package:flutter/material.dart';

import 'package:social_network/colors/colors_application.dart';

class RegistrationScreen extends StatelessWidget {
  const RegistrationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsApplication.scaffoldColor,
      appBar: AppBar(
        backgroundColor: ColorsApplication.appBarColor,
        centerTitle: true,
        title: const Text(
          'Registration',
          style: CustomTextStyles.titleTextStyle,
        ),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.pushReplacementNamed(context, '/to_product_list');
                },
                child: const Text('To next'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
