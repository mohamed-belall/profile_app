import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      appBar: AppBar(
        backgroundColor: Colors.teal[600],
        title: Text(
          'Profile',
        ),
        centerTitle: true,
      ),
      drawer: Drawer(
        elevation: 20.0,
        child: ListView(
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.teal,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 50.0,
                    backgroundImage: AssetImage(
                      'assets/images/belal.jpg',
                    ),
                  ),
                  Text(
                    'mohamed belal',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                    ),
                  ),
                  Text(
                    'mohamedbelal045@gmail.com',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 10.0,
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.home,
              ),
              title: Text(
                'Home',
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.account_box_outlined,
              ),
              title: Text(
                'About',
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                Icons.settings,
              ),
              title: Text(
                'Settings',
                style: TextStyle(
                  fontSize: 20.0,
                ),
              ),
            ),
          ],
        ),
      ),
      endDrawer: Drawer(),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 150.0,
                backgroundImage: AssetImage(
                  'assets/images/belal.jpg',
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              myCard(
                text1: 'Name',
                text2: 'Mohamed Belal',
              ),
              myCard(
                text1: 'Age',
                text2: '19',
              ),
              myCard(
                text1: 'Collage',
                text2: 'faculty of engineering',
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget myCard({
    required String text1,
    required String text2,
  }) =>
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 5.0),
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 15.0,
            vertical: 10.0,
          ),
          width: double.infinity,
          height: 60.0,
          decoration: BoxDecoration(
            color: Colors.amber,
            borderRadius: BorderRadius.circular(
              20.0,
            ),
          ),
          child: Row(
            children: [
              Text(
                '$text1:- ',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.grey[800],
                ),
              ),
              Text(
                text2,
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.white,
                  // fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      );
}
