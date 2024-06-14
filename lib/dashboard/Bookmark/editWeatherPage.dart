import 'package:flutter/material.dart';

class EditWeatherPage extends StatefulWidget {
  final String city;

  EditWeatherPage({required this.city});

  @override
  _EditWeatherPageState createState() => _EditWeatherPageState();
}

class _EditWeatherPageState extends State<EditWeatherPage> {
  final _formKey = GlobalKey<FormState>();
  late String _weatherType;
  late String _cityName;

  @override
  void initState() {
    super.initState();
    _weatherType = '';
    _cityName = widget.city;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Edit Your Weather Data',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                initialValue: _cityName,
                enabled: false,
                decoration: InputDecoration(labelText: 'Enter City Name'),
              ),
              TextFormField(
                initialValue: _weatherType,
                decoration: InputDecoration(labelText: 'Enter Weather Name'),
                onSaved: (value) => _weatherType = value!,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter a weather type';
                  }
                  return null;
                },
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _formKey.currentState!.save();
                    // Here, you can update the weather data in your preferred way
                    // For example, you might use Provider to update the data in a centralized location
                    Navigator.pop(context);
                  }
                },
                child: Text(
                  'SUBMIT',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.lightBlue,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
