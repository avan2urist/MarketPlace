import 'package:flutter/material.dart';
import 'package:social_network/colors/colors_application.dart';
import 'package:social_network/product_list/card_product.dart';
import 'package:social_network/product_list/info_lada/lada_car_info.dart';

class LadaCarsGrid extends StatelessWidget {
  const LadaCarsGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10.0,
          mainAxisSpacing: 10.0,
          childAspectRatio: 0.97,
        ),
        itemCount: ladaCars.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => CardScreen(
                      name: ladaCars[index].name,
                      imageUrl: [ladaCars[index].imageUrl.first]),
                ),
              );
            },
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(13),
                  color: ColorsApplication.container),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(11.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(13),
                      child: Image.network(
                        ladaCars[index].imageUrl.isNotEmpty
                            ? ladaCars[index].imageUrl[0]
                            : '', // Проверяем, что список не пустой
                        fit: BoxFit.cover,
                        width: double.infinity,
                        height: 100,
                      ),
                    ),
                  ),
                  Text(ladaCars[index].name),
                  Text(
                    'Цена: ${ladaCars[index].price}',
                    style: const TextStyle(fontSize: 18),
                  ),
                ],
              ),
            ),
          );
        },
      ),
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            IconButton(
              icon: const Icon(Icons.home),
              onPressed: () {
                // Действие при нажатии на кнопку "Home"
              },
            ),
            IconButton(
              icon: const Icon(Icons.search),
              onPressed: () {
                // Действие при нажатии на кнопку "Search"
              },
            ),
            IconButton(
              icon: const Icon(Icons.notifications),
              onPressed: () {
                // Действие при нажатии на кнопку "Notifications"
              },
            ),
            IconButton(
              icon: const Icon(Icons.account_circle),
              onPressed: () {
                // Действие при нажатии на кнопку "Account"
              },
            ),
          ],
        ),
      ),
    );
  }
}
