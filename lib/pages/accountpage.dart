import 'package:flutter/material.dart';
import 'package:flutter_aulas/repositories/games_repositories.dart';

class CartPage extends StatelessWidget {
  CartPage({Key? key}) : super(key: key);
  GamesRepositories cartRepositorie = GamesRepositories();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: (Colors.deepPurple),
        title: Text(
          'Account Page',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Icon(
              Icons.account_circle,
              size: 300,
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(90.0),
                  ),
                  labelText: 'Email',
                ),
              ),
            ),
            Container(
              padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(90.0),
                  ),
                  labelText: 'Password',
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.deepPurple,
                minimumSize: const Size.fromHeight(70), // NEW
              ),
              onPressed: () {},
              child: Text(
                'login account',
                style: TextStyle(fontSize: 20),
              ),
            )
          ],
        ),
      ),
      backgroundColor: (Color.fromARGB(255, 240, 231, 250)),
    );
  }
}
