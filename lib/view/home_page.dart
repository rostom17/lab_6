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
      drawer: Drawer(
        child: ListView(
          children: [
            ListTile(
              title: Text("Recent"),
              leading: Icon(Icons.alarm),
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text("Hello World"),
                  ),
                );
              },
            ),
            ListTile(
              title: Text("Image"),
              leading: Icon(Icons.image),
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text("Hello Image "),
                  ),
                );
              },
            ),
            ListTile(
              title: Text("Video"),
              leading: Icon(Icons.movie),
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text("Hello Ripon Video"),
                  ),
                );
              },
            ),
            ListTile(
              title: Text("Sd Card"),
              leading: Icon(Icons.sd_card),
              trailing: IconButton(
                onPressed: () {},
                icon: Icon(Icons.eject),
              ),
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text("Open SD-card"),
                  ),
                );
              },
            ),
          ],
        ),
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
