import 'package:flutter/material.dart';
import 'package:social_network/colors/colors_application.dart';
import 'package:social_network/product_list/info_lada/lada_cars_grid.dart';

class ProductList extends StatelessWidget {
  const ProductList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsApplication.scaffoldColor,
      appBar: AppBar(
        backgroundColor: ColorsApplication.appBarColor,
        title: const Text('ProductList'),
        centerTitle: true,
      ),
      body: const Padding(
        padding: EdgeInsets.all(12.0),
        child: LadaCarsGrid(),
      ),

      );
    
  }
}
