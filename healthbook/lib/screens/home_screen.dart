import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../widgets/tile.dart';
import '../widgets/constants.dart';
import 'hydration_screen.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'For today',
                      style: TextStyle(
                        fontSize: 40.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      DateFormat.yMMMMd('en_US').format(DateTime.now()),
                      style: TextStyle(
                        fontSize: 17.0,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 40.0,
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => HydrationScreen()));
                        },
                        child: Tile(
                          backgroundColor: kSwatchBlueColor,
                          borderColor: kSwatchBlueColor,
                          textColor: Colors.white,
                          icon: Icons.opacity,
                          title: '4',
                          subtitle: 'cups',
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    Expanded(
                      flex: 2,
                      child: Tile(
                        backgroundColor: kTileDefaultBackgroundColor,
                        borderColor: kTileDefaultBorderColor,
                        textColor: kTileDefaultTextColor,
                        title: '12345',
                        subtitle: 'steps',
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20.0,
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Tile(
                        backgroundColor: kTileDefaultBackgroundColor,
                        borderColor: kTileDefaultBorderColor,
                        textColor: kTileDefaultTextColor,
                        title: '2878',
                        subtitle: 'kcal',
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 20.0,
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Tile(
                        backgroundColor: kTileDefaultBackgroundColor,
                        borderColor: kTileDefaultBorderColor,
                        textColor: kTileDefaultTextColor,
                        title: '24',
                        subtitle: 'min',
                      ),
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    Expanded(
                      child: Tile(
                        backgroundColor: kSwatchPinkColor,
                        borderColor: kSwatchPinkColor,
                        textColor: Colors.white,
                        icon: Icons.favorite,
                        title: '118',
                        subtitle: 'bpm',
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: Container(
        height: 65,
        width: 65,
        child: FittedBox(
          child: FloatingActionButton(
            child: Icon(Icons.trending_up),
            backgroundColor: Colors.lightGreen,
            onPressed: () {},
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}