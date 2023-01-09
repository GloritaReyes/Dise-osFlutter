
import 'package:flutter/material.dart';

import 'package:diseno/widgets/background.dart';
import 'package:diseno/widgets/card_table.dart';
import 'package:diseno/widgets/custom_bottom_navigation.dart';
import 'package:diseno/widgets/page_title.dart';

class HomeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Background(),

          _HomeBody()
        ],
      ),
      bottomNavigationBar: CustomButtomNavigation(),
   );
  }
}

class _HomeBody extends StatelessWidget {
 

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
         PageTitle(),
         CardTable()
        ],
      ),
    );
  }
}