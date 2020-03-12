import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final _formKey = GlobalKey<FormState>();

  _buildTextFormField(String labelText, bool obscured){
    return Column(
      children: <Widget>[
        TextFormField(
          decoration: InputDecoration(
            filled: true,
            labelText: labelText,
          ),
          obscureText: obscured,
          validator: (value) {
            if (value.isEmpty) {
              return 'Please enter $labelText';
            }
          },
        ),
        SizedBox(height: 20.0),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Form(
          key: _formKey,
          child: ListView(
            padding: EdgeInsets.symmetric(vertical: 100, horizontal: 24),
            children: <Widget>[
              _buildTextFormField('Username', false),
              _buildTextFormField('Password', true),
              _buildTextFormField('Confirm Password', true),
              _buildTextFormField('Email Address', false),
              ButtonBar(
                children: <Widget>[
                  RaisedButton(
                    child: Text('SIGN UP'),
                    onPressed: () {
                      if (_formKey.currentState.validate()) {
                        Navigator.pop(context);
                      }
                    },
                  ),
                ],
              ),
            ]
          )
        )
      )
    );
  }
}
