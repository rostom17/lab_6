import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        title: Center(child: Text("Learning Lab 6")),
      ),
      body: ListView(
        children: [
          Image.network(
            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQXQrpJH5YofrmGgo0Ct_wDyYu36LzTwZKADw&s",
            fit: BoxFit.cover,
          ),
          const SizedBox(
            height: 20,
          ),
          CachedNetworkImage(
            imageUrl:
                "https://www.nbc.com/sites/nbcblog/files/styles/scale_600/public/2024/03/kung-fu-panda-4-1.jpg",
            placeholder: (context, url) => CircularProgressIndicator(),
            errorWidget: (context, url, error) => Icon(Icons.error),
          ),
        ],
      ),
    );
  }
}
