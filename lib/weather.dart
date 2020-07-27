import 'package:flutter/material.dart';

class Weather extends StatefulWidget {
  @override
  _WeatherState createState() => _WeatherState();
}

class _WeatherState extends State<Weather> {
  String city = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(city),
          backgroundColor: Colors.deepPurple,
        ),
        body: Column(
          children: <Widget>[
            Container(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(hintText: 'Entrez une ville.'),
                  onChanged: (value) {
                    setState(() {
                      this.city = value;
                    });
                  },
                ),
              ),
            ),
            Container(
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: RaisedButton(
                    color: Colors.deepPurpleAccent,
                    child: Text(
                      'Valider',
                      style: TextStyle(fontSize: 20, color: Colors.white),
                    ),
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => WeatherDetails(city)));
                    }),
              ),
            )
          ],
        ));
  }
}

class WeatherDetails extends StatefulWidget {
  String city;
  WeatherDetails(this.city);
  @override
  _WeatherDetailsState createState() => _WeatherDetailsState();
}

class _WeatherDetailsState extends State<WeatherDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Info: ${widget.city}'),
        backgroundColor: Colors.deepPurple,
      ),
      body: Center(child: Text('lorem')),
    );
  }
}
