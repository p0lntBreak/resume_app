import 'package:flutter/material.dart';
import 'package:url_launcher/link.dart';
import 'package:resume_app/nav_bar.dart';
import 'package:url_launcher/url_launcher.dart';

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
    primarySwatch: Colors.indigo,
    brightness: Brightness.light,
    buttonTheme: const ButtonThemeData(
      buttonColor: Colors.white,
    ));

ThemeData _darkTheme = ThemeData(
    // primarySwatch: Colors.red,
    brightness: Brightness.dark,
    buttonTheme: const ButtonThemeData(
      buttonColor: Colors.black,
    ));

class ResumeApp extends State<MyApp> {
  final Uri github_url = Uri.parse('https://github.com/p0lntBreak');

  openUrltwitter() async {
    if (await launchUrl(github_url)) {
      await launchUrl(github_url, mode: LaunchMode.inAppWebView);
    } else {
      throw 'Could not launch Url';
    }
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: _iconBool ? _darkTheme : _lightTheme,
      home: SafeArea(
        child: Scaffold(
          drawer: const NavBar(),
          // backgroundColor: Colors.blueAccent,
          appBar: AppBar(
            //backgroundColor: Colors.indigo[800],
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
          body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Container(
                    width: 400,
                    height: 200,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: const Color.fromARGB(40, 175, 184, 189)),
                    child: Row(
                      children: [
                        const SizedBox(
                          width: 150,
                          height: 200,
                          child: Padding(
                            padding: EdgeInsets.all(20.0),
                            child: CircleAvatar(
                              backgroundImage:
                                  AssetImage('images/OlaOluwa.jpg'),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: SizedBox(
                            width: 150,
                            height: 140,
                            child: Center(
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
                            ),
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
                      color: const Color.fromARGB(99, 158, 170, 177),
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
                      color: const Color.fromARGB(103, 175, 184, 189),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Center(
                        child: Text(
                          'I am a self motivated mobile app developer, eager to learn new things, create solutions, innovate where possible. I exhibit same levels of passion towards any task or challenge and willing to do the needful to ensure success. I challenge myself on a daily basis and I keep pushing towards perfection! "Creating solutions and solving problems will always remain relevant" ',
                          style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 15.0),
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    Link(
                        uri: Uri.parse("https://twitter.com/po1nt_break"),
                        builder: (context, follwLink) {
                          return IconButton(
                            onPressed: follwLink,
                            //child: Text('Go to twitter.com'),
                            splashColor: Colors.blueGrey,
                            icon: const ImageIcon(
                              AssetImage('images/twitter (2).png'),
                            ),
                            iconSize: 30.0,
                          );
                        }),
                    const SizedBox(width: 5),
                    Link(
                        uri: Uri.parse("https://instagram.com/_polntbreak"),
                        builder: (context, follwLink) {
                          return IconButton(
                            onPressed: follwLink,
                            splashColor: Colors.blueGrey,
                            icon: const ImageIcon(
                              AssetImage('images/instagram.png'),
                            ),
                            iconSize: 30.0,
                          );
                        }),
                    const SizedBox(width: 5),
                    Link(
                        uri: Uri.parse(
                            "https://www.linkedin.com/in/olaoluwa-kamisi"),
                        builder: (context, follwLink) {
                          return IconButton(
                            onPressed: follwLink,
                            splashColor: Colors.blueGrey,
                            icon: const ImageIcon(
                              AssetImage('images/linkedin.png'),
                            ),
                            iconSize: 30.0,
                          );
                        }),
                    const SizedBox(width: 5),
                    Link(
                        uri: Uri.parse(
                            "https://discord.com/users/pointbreak#3316"),
                        builder: (context, follwLink) {
                          return IconButton(
                            onPressed: follwLink,
                            splashColor: Colors.blueGrey,
                            icon: const ImageIcon(
                              AssetImage('images/discord.png'),
                            ),
                            iconSize: 30.0,
                          );
                        }),
                    const SizedBox(width: 5),
                    IconButton(
                      onPressed: openUrltwitter,
                      splashColor: Colors.blueGrey,
                      icon: const ImageIcon(
                        AssetImage('images/github.png'),
                      ),
                      iconSize: 30.0,
                    )
                  ]),
                  const SizedBox(height: 30),
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
      ),
    );
  }
}
