import 'package:flutter/material.dart';
import 'package:flutter_aulas/pages/purchase_page.dart';

class GamesDetail extends StatelessWidget {
  GamesDetail(
      {this.imageGame,
      this.priceGame,
      this.nameGame,
      this.descGame,
      this.addedGame});
  var imageGame, priceGame, nameGame, descGame, addedGame;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(nameGame),
        backgroundColor: Colors.deepPurple,
        leading: IconButton(
          color: Colors.black,
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: ListView(children: [
        SizedBox(
          height: 15.0,
        ),
        SizedBox(height: 15.0),
        Hero(
            tag: imageGame,
            child: Image.asset(
              imageGame,
              height: 250,
              width: 200,
              fit: BoxFit.contain,
            )),
        SizedBox(
          child: Text(
            descGame,
            style: TextStyle(
                fontFamily: 'Varela',
                fontSize: 30.0,
                fontWeight: FontWeight.normal,
                color: (Colors.black)),
          ),
        ),
        SizedBox(
          child: Text(
            priceGame,
            style: TextStyle(
                fontFamily: 'Varela',
                fontSize: 40.0,
                fontWeight: FontWeight.bold,
                color: (Colors.black)),
          ),
        ),
      ]),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => PurchasePage(
                      imageFinal: imageGame,
                      priceFinal: priceGame,
                      nameFinal: nameGame,
                    )),
          );
        },
        backgroundColor: (Colors.deepPurple),
        child: Icon(Icons.add_shopping_cart),
      ),
      backgroundColor: (Color.fromARGB(255, 240, 231, 250)),
    );
  }
}
