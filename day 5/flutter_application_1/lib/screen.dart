import 'package:flutter/material.dart';



class screen extends StatelessWidget {
  const screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
          },
          icon: Icon(Icons.menu),
        ),
        shadowColor: Colors.black,
        elevation: 10,
        title: Center(
          child: RichText(
            textAlign: TextAlign.center,
            text: const TextSpan(
              text: "Fantasy",
              style: TextStyle(fontSize: 24, color: Colors.white),
              children: <TextSpan>[
                TextSpan(
                  text: " PL",
                  style: TextStyle(
                    fontSize: 26,
                    color: Color.fromARGB(255, 28, 2, 70),
                  ),
                ),
              ],
            ),
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 32, 169, 75),
      ),
      body: Container(
        color: Colors.white,
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            const Center(
              child: Image(
                image: AssetImage("assets/images-removebg-preview.png"),
                height: 250,
                width: 350,
              ),
            ),
            SizedBox(height: 20),
            const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'UserName',
              ),
            ),
            const SizedBox(height: 20),
            TextFormField(
              obscureText: true,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Password',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
