import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profile Design',
      home: ProfilePage(),
    );
  }
}

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Column(
        children: [
          SizedBox(height: 50),
          CircleAvatar(
            radius: 60,
            backgroundImage: AssetImage('assets/profile_image.jpg'),
          ),
          SizedBox(height: 16),
          Text(
            'Mamon Arab',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          SizedBox(height: 32),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: Icon(Icons.message, color: Colors.black),
                onPressed: () {
                  // Add message functionality
                },
              ),
              SizedBox(width: 16),
              IconButton(
                icon: Icon(Icons.call, color: Colors.black),
                onPressed: () {
                  // Add call functionality
                },
              ),
              SizedBox(width: 16),
              IconButton(
                icon: Icon(Icons.settings, color: Colors.black),
                onPressed: () {
                  // Add settings functionality
                },
              ),
            ],
          ),
          Divider(
            color: Colors.white,
            thickness: 1,
            indent: 32,
            endIndent: 32,
          ),
          SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: Icon(Icons.dashboard, color: Colors.black),
                onPressed: () {
                  // Add dashboard functionality
                },
              ),
              SizedBox(width: 16),
              IconButton(
                icon: Icon(Icons.balance, color: Colors.black),
                onPressed: () {
                  // Add balancing functionality
                },
              ),
              SizedBox(width: 16),
              IconButton(
                icon: Icon(Icons.credit_card, color: Colors.black),
                onPressed: () {
                  // Add credit card functionality
                },
              ),
              SizedBox(width: 16),
              IconButton(
                icon: Icon(Icons.language, color: Colors.black),
                onPressed: () {
                  // Add language functionality
                },
              ),
              SizedBox(width: 16),
              IconButton(
                icon: Icon(Icons.visibility, color: Colors.black),
                onPressed: () {
                  // Add visibility functionality
                },
              ),
            ],
          ),
          SizedBox(height: 16),
          Divider(
            color: Colors.white,
            thickness: 1,
            indent: 32,
            endIndent: 32,
          ),
          SizedBox(height: 311),
          BottomNavigationBar(
            items: [
              BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: 'Search',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: 'Person',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person_add),
                label: 'Person\'s',
              ),
            ],
            currentIndex: _selectedIndex,
            selectedItemColor: Colors.blue,
            unselectedItemColor: Colors.black,
            onTap: _onItemTapped,
          ),
        ],
      ),
    );
  }
}