import 'package:chatty_bwa/widgets/chat_tile.dart';
import 'package:flutter/material.dart';
import 'package:chatty_bwa/themes.dart';

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: blueColor,
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        child: Icon(Icons.add,
        size: 28,),
        backgroundColor: greenColor,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 40),
                Image.asset('images/pic.png',
                    height: 100,
                    width: 100),
                SizedBox(height: 20),
                Text('Sabrina Carpenter',
                  style: TextStyle(
                    fontSize: 20,
                    color: whiteColor,
                  ),),
                SizedBox(height:4),
                Text('Travel Freelancer',
                  style: TextStyle(
                    color: lightBlueColor,
                    fontSize: 16,
                  ),),
                SizedBox(height: 30),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: whiteColor,
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(40),
                    ),
                  ),
                  padding : EdgeInsets.all(30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Friends',
                        style: titleTextStyle,
                      ),
                      ChatTile(
                        'images/pic1.png',
                        'Joshuer',
                        'Sorry, you`re not my typ..',
                        'Now',
                        true,
                      ),
                      ChatTile(
                        'images/pic2.png',
                        'Gabriellaa',
                        'I saw it clearly and mig..',
                        '2:30',
                        false,
                      ),
                      SizedBox(height: 30),
                      Text('Group',
                        style: titleTextStyle,
                      ),
                      ChatTile(
                        'images/icon.png',
                        'Jakarta Fair',
                        'Why does everyone ca..',
                        '11:11',
                        false,
                      ),
                      ChatTile(
                        'images/icon2.png',
                        'Angga',
                        'Here here we can go..',
                        '7:11',
                        true,
                      ),
                      ChatTile(
                        'images/icon3.png',
                        'Bentley',
                        'The car which does not..',
                        '7:11',
                        true,
                      ),

                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}