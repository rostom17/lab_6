import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedPageIndex = 0;
  final List<Widget> pages = [
    HomeScreen(),
    SettingsScreen(),
  ];

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

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
            DrawerHeader(
              padding: EdgeInsets.all(16),
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                colors: [
                  Colors.deepPurple.shade400,
                  Colors.deepPurple.shade900,
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              )),
              child: const Row(
                children: [
                  Icon(Icons.fastfood),
                  SizedBox(
                    width: 18,
                  ),
                  Text('Cooking Up!'),
                ],
              ),
            ),
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
      body: pages[_selectedPageIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage,
        currentIndex: _selectedPageIndex,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: 'Settings'),
        ],
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
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
    );
  }
}

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Image.network(
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSfFxKxCy7pjkfI4WUjmEJ_JIVUj3yvi_WUbA&s",
          fit: BoxFit.cover,
        ),
        const SizedBox(
          height: 20,
        ),
        CachedNetworkImage(
          imageUrl:
              "https://d.newsweek.com/en/full/2068100/baymax.jpg?w=1600&h=1600&q=88&f=0b4a50f6f8158fe4f22bfd2328113de6",
          placeholder: (context, url) => CircularProgressIndicator(),
          errorWidget: (context, url, error) => Icon(Icons.error),
        ),
      ],
    );
  }
}
