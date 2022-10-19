import 'package:flutter/material.dart';
import 'package:flutter_aulas/pages/homepage.dart';

class PurchasePage extends StatelessWidget {
  PurchasePage(
      {this.imageFinal, this.priceFinal, this.nameFinal, this.addedFinal});
  var imageFinal, priceFinal, nameFinal, addedFinal;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Purchase Page'),
        backgroundColor: Colors.deepPurple,
        leading: IconButton(
          color: Colors.black,
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: ListView(
        children: [
          SizedBox(
            child: Text(
              nameFinal,
              style: TextStyle(
                  fontFamily: 'Varela',
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold,
                  color: (Colors.black)),
            ),
          ),
          Row(children: [
            Hero(
                tag: imageFinal,
                child: Image.asset(
                  imageFinal,
                  height: 150,
                  width: 150,
                  fit: BoxFit.contain,
                )),
            SizedBox(
              child: Text(
                priceFinal,
                style: TextStyle(
                    fontFamily: 'Varela',
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                    color: (Colors.black)),
              ),
            ),
          ]),
          SizedBox(
            child: Text(
              'Payment data sent is protected by Secure Socket Layer (SSL) technology, certified by a digital certificate. When you complete this transaction, the amount will be debited from your chosen payment method and you will receive an email with your purchase confirmation receipt. if you do not have an account, the code will be generated and sent by SMS to the number present on this cell phone.',
              style: TextStyle(
                  fontFamily: 'Varela',
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: (Colors.black)),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.deepPurple,
                minimumSize: const Size.fromHeight(100), // NEW
              ),
              child: Text(
                "Complete purchase",
                style: TextStyle(fontSize: 30),
              ),
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: Text("Success"),
                        content: Text("Purchase Sucessfully"),
                        actions: <Widget>[
                          TextButton(
                            onPressed: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomePage()),
                            ),
                            child: const Text('Return to main menu'),
                          ),
                        ],
                      );
                    });
              })
        ],
      ),
      backgroundColor: (Color.fromARGB(255, 240, 231, 250)),
    );
  }
}
