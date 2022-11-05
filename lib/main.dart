import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:resume_app/navbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => ResumeApp();
}

bool _iconBool = false;

IconData lightMode = Icons.wb_sunny;
IconData darkMode = Icons.nights_stay;

ThemeData _lightTheme = ThemeData(
    //primarySwatch: Colors.blue,
    brightness: Brightness.light,
    buttonTheme: const ButtonThemeData(
      buttonColor: Colors.white,
    ));

ThemeData _darkTheme = ThemeData(
    primarySwatch: Colors.red,
    brightness: Brightness.dark,
    buttonTheme: const ButtonThemeData(
      buttonColor: Colors.black,
    ));

class ResumeApp extends State<MyApp> {
  openUrltwitter() async {
    if (await canLaunchUrl(Uri.https('twitter.com', 'olahtops'))) {
      await launchUrl(Uri.https('twitter.com', 'olahtops'));
    } else {
      throw 'Could not launch Url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: _iconBool ? _darkTheme : _lightTheme,
      home: SafeArea(
        child: Scaffold(
          drawer: NavBar(),
          // backgroundColor: Colors.blueAccent,
          appBar: AppBar(
            title: const Text('resume'),
            centerTitle: true,
            actions: [
              IconButton(
                onPressed: () {
                  setState(() {
                    _iconBool = !_iconBool;
                  });
                },
                icon: Icon(_iconBool ? lightMode : darkMode),
              ),
            ],
          ),
          body: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  width: 400,
                  height: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Color.fromARGB(176, 33, 47, 243),
                  ),
                  child: Row(
                    children: [
                      const SizedBox(
                        width: 200,
                        height: 200,
                        child: Padding(
                          padding: EdgeInsets.all(20.0),
                          child: CircleAvatar(
                            backgroundImage: AssetImage('images/OlaOluwa.jpg'),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 150,
                        height: 140,
                        child: Column(
                          children: const [
                            Text(
                              'OlaOluwa',
                              style: TextStyle(
                                fontSize: 30.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              'Kamisi',
                              style: TextStyle(
                                fontSize: 30.0,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(height: 5),
                            Text(
                              '(point break)',
                              style: TextStyle(
                                fontSize: 15.0,
                                fontStyle: FontStyle.italic,
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              'Mobile Dev',
                              style: TextStyle(
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold,
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  width: 400,
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Color.fromARGB(153, 33, 47, 243),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Text(
                      'Mobile App developer/Engineer. Dart and Flutter. Everything is a widget! HNG9',
                      style: TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  width: 400,
                  height: 200,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Color.fromARGB(176, 19, 33, 233),
                  ),
                ),
                SizedBox(height: 15.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () {
                        // openUrltwitter();
                      },
                      splashColor: Colors.blueGrey,
                      icon: const ImageIcon(
                        AssetImage('images/twitter (2).png'),
                      ),
                      iconSize: 30.0,
                    ),
                    const SizedBox(width: 5),
                    IconButton(
                      onPressed: () {
                        print('instagram');
                      },
                      splashColor: Colors.blueGrey,
                      icon: const ImageIcon(
                        AssetImage('images/instagram.png'),
                      ),
                      iconSize: 30.0,
                    ),
                    const SizedBox(width: 5),
                    IconButton(
                      onPressed: () {
                        print('linkedIn');
                      },
                      splashColor: Colors.blueGrey,
                      icon: const ImageIcon(
                        AssetImage('images/linkedin.png'),
                      ),
                      iconSize: 30.0,
                    ),
                    const SizedBox(width: 5),
                    IconButton(
                      onPressed: () {
                        print('discord');
                      },
                      splashColor: Colors.blueGrey,
                      icon: const ImageIcon(
                        AssetImage('images/discord.png'),
                      ),
                      iconSize: 30.0,
                    )
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(Icons.copyright, color: Colors.black),
                    SizedBox(width: 2),
                    Text(
                      'HNG9 2022',
                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 10.0,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
