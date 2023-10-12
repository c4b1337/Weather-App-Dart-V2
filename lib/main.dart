import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Weather Forecast",
            style: TextStyle(
              color: Colors.black,
              fontSize: 22.0,
              fontWeight: FontWeight.w300,
            ),
          ),
          centerTitle: true,
          backgroundColor: Colors.red,
        ),
        body: _buildbody(),
      ),
    );
  }
}

Widget _buildbody() {
  return Column(
    children: <Widget>[
      textField(),
      const Divider(
        height: 10.0,
        color: Colors.white,
      ),
      cityDetail(),
      const Divider(
        height: 30.0,
        color: Colors.white,
      ),
      _tempatureDetail(),
      const Divider(
        height: 30.0,
        color: Colors.white,
      ),
      extraWeatherDetail(),
      const Divider(
        height: 20.0,
        color: Colors.white,
      ),
      _buildText('7-DAY WEATHER FORECAST'),
      const Divider(
        height: 40,
        color: Colors.white,
      ),
      _bottomDetails(),
    ],
  );
}

Widget textField() {
  return TextField(
    decoration: InputDecoration(
      hintText: "Enter City Name",
      prefixIcon: const Icon(Icons.search),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
    ),
  );
}

Widget cityDetail() {
  return const ListTile(
    leading: Icon(
      Icons.location_city,
      color: Colors.red,
      size: 40,
    ),
    title: Text(
      'Krym, Ukraine',
      style: TextStyle(
        fontSize: 35,
        fontWeight: FontWeight.w200,
        color: Colors.black,
      ),
    ),
    subtitle: Text(
      'Tue, 10, 2023',
      style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w300,
          color: Color.fromARGB(251, 208, 140, 140)),
    ),
  );
}

Widget _tempatureDetail() {
  return const Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Icon(
        Icons.wb_sunny,
        color: Colors.red,
        size: 60,
      ),
      Column(
        children: [
          Text(
            '15°F',
            style: TextStyle(
              fontSize: 80,
              color: Colors.red,
              fontWeight: FontWeight.w200,
            ),
          ),
          Text(
            'LIGHT SNOW',
            style: TextStyle(
              fontSize: 20,
              color: Colors.red,
              fontWeight: FontWeight.w200,
            ),
          ),
        ],
      ),
    ],
  );
}

Widget extraWeatherDetail() {
  return const Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: <Widget>[
      Column(
        children: [
          Icon(
            Icons.ac_unit,
            color: Colors.red,
            size: 40,
          ),
          Text(
            '5',
            style: TextStyle(
              fontSize: 30,
              color: Colors.red,
              fontWeight: FontWeight.w200,
            ),
          ),
          Text(
            'km/hr',
            style: TextStyle(
              fontSize: 15.0,
              color: Colors.red,
              fontWeight: FontWeight.w200,
            ),
          ),
        ],
      ),
      Column(
        children: [
          Icon(
            Icons.ac_unit,
            color: Colors.red,
            size: 40,
          ),
          Text(
            '3',
            style: TextStyle(
              fontSize: 30,
              color: Colors.red,
              fontWeight: FontWeight.w200,
            ),
          ),
          Text(
            '%',
            style: TextStyle(
              fontSize: 15.0,
              color: Colors.red,
              fontWeight: FontWeight.w200,
            ),
          ),
        ],
      ),
      Column(
        children: [
          Icon(
            Icons.ac_unit,
            color: Colors.red,
            size: 40,
          ),
          Text(
            '20',
            style: TextStyle(
              fontSize: 30,
              color: Colors.red,
              fontWeight: FontWeight.w200,
            ),
          ),
          Text(
            '%',
            style: TextStyle(
              fontSize: 15.0,
              color: Colors.red,
              fontWeight: FontWeight.w200,
            ),
          ),
        ],
      ),
    ],
  );
}

Text _buildText(String text) {
  MainAxisAlignment.center;
  return const Text(
    '7-DAY WEATHER FORECAST',
    style: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w200,
      color: Colors.black,
    ),
  );
}

Widget _bottomDetails() {
  return Expanded(
    child: ListView(
      scrollDirection: Axis.horizontal,
      itemExtent: 250,
      children: const <Widget>[
        ListTile(
          title: Text(
            'Friday',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w200,
              color: Colors.black,
            ),
          ),
          subtitle: Text(
            '6°F',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w200,
              color: Colors.black,
            ),
          ),
          leading: Icon(
            Icons.wb_sunny,
            color: Colors.red,
            size: 45,
          ),
        ),
        ListTile(
          title: Text(
            'Saturday',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w200,
              color: Colors.black,
            ),
          ),
          subtitle: Text(
            '5°F',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w200,
              color: Colors.black,
            ),
          ),
          leading: Icon(
            Icons.wb_sunny,
            color: Colors.red,
            size: 45,
          ),
        ),
        ListTile(
          title: Text(
            'Sunday',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w200,
              color: Colors.black,
            ),
          ),
          subtitle: Text(
            '4°F',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w200,
              color: Colors.black,
            ),
          ),
          leading: Icon(
            Icons.wb_sunny,
            color: Colors.red,
            size: 45,
          ),
        ),
      ],
    ),
  );
}
