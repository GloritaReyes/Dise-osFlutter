
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BasicDesignScreen extends StatelessWidget {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image(image: AssetImage('assets/imagen.jpg')),
        
         Title(),
         
          ButtonSection(),

          Container(
            margin: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
            child: Text('Sunt aute tempor irure amet enim commodo nulla duis in officia. Veniam excepteur magna minim est magna incididunt commodo est. Veniam anim aute voluptate exercitation est adipisicing. Consectetur Lorem nostrud mollit ea fugiat reprehenderit consequat laborum nisi pariatur occaecat. Anim est sunt veniam exercitation quis nisi dolor incididunt nostrud labore sint nisi laboris velit. Veniam fugiat ut laborum et nisi fugiat minim occaecat exercitation ut ad.'))
        ],
      )
      );
  }
}

class Title extends StatelessWidget {

  const Title({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 30,vertical:10),
      child: Row(
        children: [
          
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Text('Oeschinen Lake campground',style: TextStyle(fontWeight: FontWeight.bold),),
            Text('Kandersteg,Switzerland',style: TextStyle(color: Colors.black45),),

            ],
          ),

          Expanded(child: Container(color: Colors.red)),

          Icon(Icons.star,color: Colors.red),
          Text('41'),
        ],
      ),
    );
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [

           CustomButton(icon: Icons.call,text: 'Call'),
           CustomButton(icon: Icons.map_sharp,text: 'Route'),
           CustomButton(icon: Icons.share,text: 'Share'),

        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final IconData icon;
  final String text;
  
  const CustomButton({
    Key? key,
     required this.icon, 
     required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
     children: [
       Icon(this.icon,color: Colors.blue,size: 30,),
       Text(this.text,style: TextStyle(color: Colors.blue))
     ],
        );
  }
}