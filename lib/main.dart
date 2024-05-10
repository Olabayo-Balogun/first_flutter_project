import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      brightness: Brightness.light,
      primaryColor: Colors.lightBlue[800],
      fontFamily: 'Georgia',
      textTheme: const TextTheme(
        displayLarge: TextStyle(fontSize: 70, fontWeight: FontWeight.bold),
        titleLarge: TextStyle(fontSize: 34, fontStyle: FontStyle.italic),
        bodyMedium: TextStyle(fontSize: 12, fontFamily: 'Roboto'),
      ),
    ),
    home: LoginScreen(),
  ));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login Screen',
      home: LoginScreen(),
    );
  }
}

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
        centerTitle: true,
        titleTextStyle: const TextStyle(
          fontSize: 40,
          fontWeight: FontWeight.bold,
        ),
      ),
      body: Center(
        child: Column
        (
          mainAxisAlignment: MainAxisAlignment.center, children: 
          [
            Text(
              'Welcome',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const TextField(
              decoration: InputDecoration(
                  labelText: 'Username', prefixIcon: Icon(Icons.person)),
            ),
            const SizedBox(height: 16),
            const TextField(
              decoration: InputDecoration(
                labelText: 'Password',
                prefixIcon: Icon(Icons.lock),
              ),
              obscureText: true, //Hide password input
            ),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}

class ProductScreen extends StatelessWidget {
  const ProductScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tesla Launch'),
        centerTitle: true,
        titleTextStyle: const TextStyle(
          fontSize: 40,
          fontWeight: FontWeight.bold,
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'Falcon9Landing.jpg',
              width: 800,
              height: 500,
            ),
            const SizedBox(height: 10),
            const Text(
              'Tesla launch happening live',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Tesla launch happening live and shot on camera!',
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
