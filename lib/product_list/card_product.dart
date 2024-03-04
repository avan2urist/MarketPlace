import 'package:flutter/material.dart';
import 'package:social_network/product_list/info_lada/lada_car_info.dart';

class CardScreen extends StatefulWidget {
  final LadaCar car;

  const CardScreen({super.key, required this.car});

  @override
  // ignore: library_private_types_in_public_api
  _CardScreenState createState() => _CardScreenState();
}

class _CardScreenState extends State<CardScreen> {
  int currentPage = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.car.name),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            height: 300, // Вы можете установить желаемую высоту изображения
            child: Stack(
              children: [
                PageView.builder(
                  itemCount: widget.car.imageUrl.length,
                  onPageChanged: (int page) {
                    setState(() {
                      currentPage = page + 1;
                    });
                  },
                  itemBuilder: (context, idx) {
                    return Image.network(
                      widget.car.imageUrl[idx],
                      fit: BoxFit
                          .fitWidth, // Растягиваем изображение на всю ширину
                    );
                  },
                ),
                Positioned(
                  bottom: 10,
                  left: 0,
                  right: 0,
                  child: Center(
                    child: Text(
                      '$currentPage/${widget.car.imageUrl.length}',
                      style: const TextStyle(
                          fontSize: 16,
                          color: Colors.black,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(widget.car.name,
                    style: const TextStyle(
                        fontSize: 20, fontWeight: FontWeight.bold)),
                const SizedBox(height: 10),
                Text('Price: ${widget.car.price}'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
