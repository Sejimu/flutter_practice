import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: _appBarButton(),
        backgroundColor: Color(0xFF68B1C9),
      ),
      body: _body(),
    );
  }
}

Widget _body() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 16.0),
    color: Color(0xFF68B1C9),
    child: Center(
      child: Column(
        children: [
          SizedBox(
            height: 40,
          ),
          _avatar(),
          SizedBox(
            height: 60,
          ),
          _textFields(),
          Container(
            margin: EdgeInsets.only(bottom: 24),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  fixedSize: const Size(328, 48),
                  backgroundColor: Color(0xff263775),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                child: const Text(
                  'Get location',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          )
        ],
      ),
    ),
  );
}

TextButton _appBarButton() {
  return TextButton(
    onPressed: () {},
    child: const Text(
      'Generate',
      style: TextStyle(
        color: Colors.blue,
        fontSize: 16,
        fontWeight: FontWeight.w900,
      ),
    ),
  );
}

Widget _avatar() {
  return Container(
    height: 150,
    width: 150,
    decoration: const BoxDecoration(
      gradient: LinearGradient(
          colors: [Color(0xffC7CDC9), Color(0xff222419)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight),
      shape: BoxShape.circle,
    ),
    child: Container(
      height: 148,
      width: 148,
      margin: const EdgeInsets.all(2.0),
      child: CircleAvatar(
        radius: 74,
        child: Image.asset('assets/img/Ellipse 2.png'), // Adjust the asset path
      ),
    ),
  );
}

Widget _textFields() {
  return Container(
    child: Column(
      children: [
        _buildTextField(),
        SizedBox(height: 24),
        _buildTextField(),
        SizedBox(height: 24),
        _buildTextField(),
        SizedBox(height: 24),
        _buildTextField(),
      ],
    ),
  );
}

Widget _buildTextField() {
  return Container(
    width: 328,
    height: 48,
    child: TextField(
      style: TextStyle(fontSize: 20, fontWeight: FontWeight.w400),
      decoration: InputDecoration(
        fillColor: Colors.white,
        filled: true,
        border: UnderlineInputBorder(
          borderSide: BorderSide(
            width: 2.0,
            color: Colors.black,
          ),
        ),
        contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        labelText: "Name",
        labelStyle: TextStyle(fontSize: 20),
      ),
    ),
  );
}
