import 'package:flutter/material.dart';
import 'package:social_network/product_list/product_list.dart';
import 'package:social_network/reg_authoriz/reg_and_authorize_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Registration Form',
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: '/',
      routes: {
        '/':(context) => const LoginSignUpScreen(),
        '/to_product_list':(context) => const ProductList(),
      },
    );
  }
}

