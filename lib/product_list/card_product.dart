import 'package:flutter/material.dart';
import 'package:social_network/product_list/info_lada/lada_car_info.dart';

class CardScreen extends StatelessWidget {
  final String name;
  final List<String> imageUrl;

  const CardScreen({super.key, required this.name, required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(name),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: PageView.builder(
              itemCount: ladaCars.length,
              itemBuilder: (context, index) {
                LadaCar car = ladaCars[index];
                return Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(car.name),
                    const SizedBox(height: 10),
                    SizedBox(
                      height: 200,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: car.imageUrl.length,
                        itemBuilder: (context, idx) {
                          return Image.network(car.imageUrl[idx]);
                        },
                      ),
                    ),
                    const SizedBox(height: 10),
                    Text('Price: ${car.price}'),
                  ],
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(name,
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
