

import 'package:flutter/material.dart';
import 'package:untitled1/secondary screens/basket.dart';

import 'package:untitled1/product_list/car_info/lada_car_info.dart';

import 'package:untitled1/product_list/card_product.dart';
import 'package:untitled1/colors/colors.dart';

// ignore: non_constant_identifier_names
List<LadaCar>Car_favorite = [];

class Favorite extends StatefulWidget {

  const Favorite({super.key});

  @override
  State<Favorite> createState() => _FavoriteState();
}

class _FavoriteState extends State<Favorite> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsApplication.scaffoldColor,
      appBar: AppBar(
        backgroundColor: ColorsApplication.appBarColor,
        title: const Text('favorite'),
        centerTitle: true,),
      body: Column(
        children: <Widget> [
          Expanded(child:  ListView.builder(
            itemCount: Car_favorite.length,
            itemBuilder: (BuildContext context, int index) {
              return Padding(padding: const EdgeInsets.all(8),
                child: Stack(
                  children: [

                    ElevatedButton(onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => CardScreen(car: Car_in_basket[index],),
                        ),
                      );
                    },
                      style: ButtonStyle(backgroundColor: MaterialStateProperty.all<Color>(Colors.grey),),

                      child: ListTile(
                        leading:  ClipRRect(borderRadius: BorderRadius.circular(12),
                          child: Image.network(Car_in_basket[index].imageUrl.first.toString()),),
                        title: Text(Car_in_basket[index].name),
                        subtitle: Text(Car_in_basket[index].price),
                      ),


                    ),
                    Positioned(
                      top: 5,
                      right: 5,
                      child: IconButton(
                        icon: const Icon(Icons.close),
                        onPressed: () {
                          setState(() {

                            Car_favorite.removeAt(index);

                          });
                        },

                      ),
                    )
                  ],
                ),

              );


            },


          ),
          ),

          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(padding: const EdgeInsets.all(8),
              child: ElevatedButton(onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Basket(),
                  ),
                );
              },
                style: ButtonStyle( backgroundColor: MaterialStateProperty.all<Color>(Colors.deepOrange),),
                child: const Text('TO BASKET',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
                ),
              ),
            ),

          )
        ],
      ),

    );
  }
}