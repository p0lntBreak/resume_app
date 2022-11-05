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
          onTap: () => print('fav'),
        ),
        ListTile(
          leading: const Icon(Icons.favorite),
          title: const Text('Favorites'),
          onTap: () => print('fav'),
        ),
        ListTile(
          leading: const Icon(Icons.people),
          title: const Text('Friends'),
          onTap: () => print('fav'),
        ),
        ListTile(
          leading: const Icon(Icons.notifications),
          title: const Text('Notifications'),
          onTap: () => print('fav'),
        ),
        ListTile(
          leading: const Icon(Icons.task),
          title: Text('Task'),
          onTap: () => print('fav'),
        ),
        Divider(
          color: Colors.black,
        ),
        ListTile(
          leading: const Icon(Icons.settings),
          title: const Text('Settings'),
          onTap: () => print('fav'),
        ),
        ListTile(
          leading: const Icon(Icons.exit_to_app),
          title: const Text('exit'),
          onTap: () => print('fav'),
        ),
      ],
    ));
  }
}
