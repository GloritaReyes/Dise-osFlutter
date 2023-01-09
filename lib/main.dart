import 'package:diseno/screens/basic_design.dart';
import 'package:diseno/screens/home_scree.dart';
import 'package:diseno/screens/scroll_design.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp( MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      theme: ThemeData.dark(),
      initialRoute: 'home_Screen',
      
      routes: {
        'basic_design':(_) => BasicDesignScreen(),
        'scroll_Screen':(_)=> ScrollScreen(),
        'home_Screen':(_)=> HomeScreen(),

      },
      );
  }
}
