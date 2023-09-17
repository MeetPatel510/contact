
import 'package:contact/provider/contact.dart';
import 'package:contact/provider/counter.dart';
import 'package:contact/utils/theme.dart';
import 'package:contact/views/add.dart';
import 'package:contact/views/hiden.dart';
import 'package:contact/views/homepage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'views/Home.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences preferences = await SharedPreferences.getInstance();
  bool isvisited = preferences.getBool('IsIntroVisited') ?? false;
  runApp(MultiProvider(
    providers: [
      ListenableProvider(create: (context) => Counterprovider()),
      ListenableProvider(create: (context) => Contactprovider()),
      ChangeNotifierProvider(create: (context)=> Contactprovider()),
    ],
    builder: (context, _) => MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(backgroundColor: Colors.blueGrey,scaffoldBackgroundColor: Colors.blueGrey),
      themeMode: ThemeMode.system,
      initialRoute: (isvisited) ? 'home' : 'add_contact',
      routes: {
        'home': (context) => Home(),
        'add_contact': (context) => add_contact(),
        'homepage': (context) => homepage(),
        'savecontact': (context) => savecontact(),
      },
    ),
  ));
}
