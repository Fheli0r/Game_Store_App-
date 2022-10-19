import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_aulas/games_details.dart';
import 'package:flutter_aulas/pages/accountpage.dart';

import '../repositories/games_repositories.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GamesRepositories repositories = GamesRepositories();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.deepPurple,
          actions: [
            IconButton(
                color: Colors.black,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CartPage()),
                  );
                },
                icon: (Icon(Icons.account_circle))),
          ],
          leading: IconButton(
            color: Colors.black,
            icon: Icon(Icons.arrow_back),
            onPressed: () {
              exit(0);
            },
          ),
          title: Text(
            'Game Store',
            style: TextStyle(color: Colors.black),
          )),
      body: ListView.builder(
        itemCount: repositories.gamesIn.length,
        itemBuilder: ((context, index) {
          return _buildCard(
              repositories.gamesIn[index].photo,
              repositories.gamesIn[index].price,
              repositories.gamesIn[index].name,
              repositories.gamesIn[index].description,
              repositories.gamesIn[index].added,
              context);
        }),
      ),
      backgroundColor: (Color.fromARGB(255, 240, 231, 250)),
    );
  }
}

Widget _buildCard(String imageUrl, String pricein, String namein, String descin,
    bool addedin, BuildContext context) {
  return Padding(
    padding: EdgeInsets.only(top: 15.0, bottom: 5.0, left: 30.0, right: 30.0),
    child: InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => GamesDetail(
                    imageGame: imageUrl,
                    priceGame: pricein,
                    nameGame: namein,
                    descGame: descin,
                  )),
        );
      },
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                spreadRadius: 3.0,
                blurRadius: 5.0,
              )
            ],
            color: Colors.white),
        child: Column(
          children: [
            Hero(
                tag: imageUrl,
                child: Container(
                  height: 100.0,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(imageUrl), fit: BoxFit.cover)),
                )),
            Text(namein,
                style: TextStyle(
                    color: (Colors.black),
                    fontFamily: 'Varela',
                    fontSize: 25.0)),
            Text(pricein,
                style: TextStyle(
                    color: (Colors.black),
                    fontFamily: 'Varela',
                    fontSize: 14.0)),
          ],
        ),
      ),
    ),
  );
}
