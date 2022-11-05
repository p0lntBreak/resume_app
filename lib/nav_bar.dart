// ignore_for_file: avoid_returning_null_for_void

import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
      children: [
        UserAccountsDrawerHeader(
          accountName: const Text(
            'point break',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          accountEmail: const Text(
            'pointbreak@gmail.com',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          currentAccountPicture: CircleAvatar(
            child: ClipOval(
              child: Image.asset(
                'images/OlaOluwa_2.jpg',
                width: 90,
                height: 90,
                fit: BoxFit.cover,
              ),
            ),
          ),
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('images/Jeremy-bishop-surf2.jpg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(height: 20),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Center(
              child: Icon(Icons.announcement),
            ),
            Text('Coming Soon')
          ],
        ),
        const SizedBox(height: 20),
        ListTile(
          leading: const Icon(Icons.book),
          title: const Text('Portfolio'),
          onTap: () => null,
        ),
        ListTile(
          leading: const Icon(Icons.favorite),
          title: const Text('Favorites'),
          onTap: () => null,
        ),
        ListTile(
          leading: const Icon(Icons.people),
          title: const Text('Friends'),
          onTap: () => null,
        ),
        ListTile(
          leading: const Icon(Icons.notifications),
          title: const Text('Notifications'),
          onTap: () => null,
          trailing: ClipOval(
            child: Container(
              color: Colors.black,
              width: 20,
              height: 20,
              child: const Center(
                child: Text(
                  '2',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                  ),
                ),
              ),
            ),
          ),
        ),
        ListTile(
          leading: const Icon(Icons.task),
          title: const Text('Task'),
          onTap: () => null,
        ),
        const Divider(
          color: Colors.black,
        ),
        ListTile(
          leading: const Icon(Icons.settings),
          title: const Text('Settings'),
          onTap: () => null,
        ),
      ],
    ));
  }
}
