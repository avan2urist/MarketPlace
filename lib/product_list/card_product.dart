import 'package:flutter/material.dart';
import 'package:social_network/product_list/info_lada/lada_car_info.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class CardScreen extends StatefulWidget {
  final LadaCar car;
  
  const CardScreen({super.key, required this.car});

  @override
  // ignore: library_private_types_in_public_api
  _CardScreenState createState() => _CardScreenState();
}

class _CardScreenState extends State<CardScreen> {
  int photoIndex =0;
  late YoutubePlayerController _controller;

  @override
  void initState() {
    super.initState();
    _controller = YoutubePlayerController(
      initialVideoId: YoutubePlayer.convertUrlToId(widget.car.videoUrl)!,
      flags: const YoutubePlayerFlags(autoPlay: false),
    );
  }

  @override
  void didUpdateWidget(covariant CardScreen oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.car.videoUrl != oldWidget.car.videoUrl) {
      _controller.load(YoutubePlayer.convertUrlToId(widget.car.videoUrl)!);
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

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
            height: MediaQuery.of(context).size.height / 2, // Половина экрана
            child: PageView.builder(
              itemCount: widget.car.imageUrl.length + 1, // Add 1 for the video
              itemBuilder: (context, index) {
                if (index == widget.car.imageUrl.length) {
                  return SizedBox(
                    height: MediaQuery.of(context).size.height / 2, // Половина экрана
                    child: YoutubePlayer(controller: _controller),
                  );
                } else {
                  return Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Image.network(widget.car.imageUrl[index], fit: BoxFit.cover),
                      Positioned(
                        bottom: 8.0,
                        child: Text('${index + 1}/${widget.car.imageUrl.length}',
                            style: const TextStyle(color: Colors.white)),
                      ),
                    ],
                  );
                }
              },
              onPageChanged: (index) {
                setState(() {
                  photoIndex = index;
                });
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(widget.car.name,
                    style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
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
