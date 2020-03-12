
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'dart:async';

class SearchPage extends StatefulWidget{
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  bool _locationExpanded = true;
  int _locationRadioValue = 0;
  List<String> _locationList =['Seoul', 'Daegu', 'Busan'];

  bool _roomExpanded = true;
  int _roomRadioValue = 0;
  List<String> _roomList =['Single', 'Double', 'Family'];

  bool _classExpanded = true;
  List<bool> _classCheckValue = [false, false, false, false, false];

  bool _dateSwitchValue = false;
  String _checkInDate = '';
  String _checkInTime = '';
  String _checkOutDate = '';
  String _checkOutTime = '';

  int _fee = 0;

  Widget _buildLocationSection(){
    return ExpansionPanelList(
      expansionCallback: (int panelIndex, bool isExpanded) {
        setState(() {
          _locationExpanded = !isExpanded;
        });
      },
      children: <ExpansionPanel>[
        ExpansionPanel(
          headerBuilder: (BuildContext context, bool isExpanded) {
            return ListTile(
              title: Row(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.all(10),
                    child: Text(
                      "Location",
                      style: TextStyle(fontWeight: FontWeight.w700)
                    )
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    child: Text("Select location")
                  )
                ],
              )
            );
          },
          body: Container(
            margin: EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              children: <Widget>[
                RadioListTile(
                  title: Text('Seoul'),
                  value: 0,
                  groupValue: _locationRadioValue,
                  onChanged: (value){
                    setState((){_locationRadioValue = value;});
                  },
                ),
                RadioListTile(
                  title: Text('Daegu'),
                  value: 1,
                  groupValue: _locationRadioValue,
                  onChanged: (value){
                    setState((){_locationRadioValue = value;});
                  },
                ),
                RadioListTile(
                  title: Text('Busan'),
                  value: 2,
                  groupValue: _locationRadioValue,
                  onChanged: (value){
                    setState((){_locationRadioValue = value;});
                  },
                )
              ],
            ),
          ),
          isExpanded: _locationExpanded,
        ),
      ],
    );
  }

  Widget _buildRoomSection(){
    return ExpansionPanelList(
      expansionCallback: (int panelIndex, bool isExpanded) {
        setState(() {
          _roomExpanded = !isExpanded;
        });
      },
      children: <ExpansionPanel>[
        ExpansionPanel(
          headerBuilder: (BuildContext context, bool isExpanded) {
            return ListTile(
              title: Row(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.all(10),
                    child: Text(
                      "Room",
                      style: TextStyle(fontWeight: FontWeight.w700)
                    )
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    child: Text("Select room")
                  )
                ],
              )
            );
          },
          body: Container(
            margin: EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              children: <Widget>[
                RadioListTile(
                  title: Text('Single'),
                  value: 0,
                  groupValue: _roomRadioValue,
                  onChanged: (value){
                    setState((){_roomRadioValue = value;});
                  },
                ),
                RadioListTile(
                  title: Text('Double'),
                  value: 1,
                  groupValue: _roomRadioValue,
                  onChanged: (value){
                    setState((){_roomRadioValue = value;});
                  },
                ),
                RadioListTile(
                  title: Text('Family'),
                  value: 2,
                  groupValue: _roomRadioValue,
                  onChanged: (value){
                    setState((){_roomRadioValue = value;});
                  },
                ),
              ],
            ),
          ),
          isExpanded: _roomExpanded,
        ),
      ],
    );
  }

  Widget _buildClassSection(){
    return ExpansionPanelList(
      expansionCallback: (int panelIndex, bool isExpanded) {
        setState(() {
          _classExpanded = !isExpanded;
        });
      },
      children: <ExpansionPanel>[
        ExpansionPanel(
          headerBuilder: (BuildContext context, bool isExpanded) {
            return ListTile(
              title: Row(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.all(10),
                    child: Text(
                        "Class",
                        style: TextStyle(fontWeight: FontWeight.w700)
                    )
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    child: Text("Select hotel classes")
                  )
                ],
              )
            );
          },
          body: Container(
            margin: EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              children: <Widget>[
                CheckboxListTile(
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: List.generate(1, (index){
                      return Icon(Icons.star, color: Colors.yellow);
                    })
                  ),
                  value: _classCheckValue[0],
                  onChanged: (bool value) {
                    setState(() { _classCheckValue[0] = !_classCheckValue[0]; });
                  },
                ),
                CheckboxListTile(
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: List.generate(2, (index){
                      return Icon(Icons.star, color: Colors.yellow);
                    })
                  ),
                  value: _classCheckValue[1],
                  onChanged: (bool value) {
                    setState(() { _classCheckValue[1] = !_classCheckValue[1]; });
                  },
                ),
                CheckboxListTile(
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: List.generate(3, (index){
                      return Icon(Icons.star, color: Colors.yellow);
                    })
                  ),
                  value: _classCheckValue[2],
                  onChanged: (bool value) {
                    setState(() { _classCheckValue[2] = !_classCheckValue[2]; });
                  },
                ),
                CheckboxListTile(
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: List.generate(4, (index){
                      return Icon(Icons.star, color: Colors.yellow);
                    })
                  ),
                  value: _classCheckValue[3],
                  onChanged: (bool value) {
                    setState(() { _classCheckValue[3] = !_classCheckValue[3]; });
                  },
                ),
                CheckboxListTile(
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: List.generate(5, (index){
                      return Icon(Icons.star, color: Colors.yellow);
                    })
                  ),
                  value: _classCheckValue[4],
                  onChanged: (bool value) {
                    setState(() { _classCheckValue[4] = !_classCheckValue[4]; });
                  },
                ),
              ],
            ),
          ),
          isExpanded: _classExpanded,
        ),
      ],
    );
  }

  Future _selectDate(BuildContext context, bool isCheckIn) async {
    DateTime picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2019),
      lastDate: DateTime(2021)
    );
    if(picked != null) {
      setState(() => isCheckIn?
      _checkInDate =  DateFormat('yyyy-MM-dd').format(picked):
      _checkOutDate = DateFormat('yyyy-MM-dd').format(picked)
      );
    }
  }

  Future _selectTime(BuildContext context, bool isCheckIn) async {
    final now = new DateTime.now();
    TimeOfDay picked = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );
    if(picked != null) {
      setState(() => isCheckIn?
      _checkInTime =  DateFormat('HH:mm').format(DateTime(now.year, now.month, now.day, picked.hour, picked.minute)):
      _checkOutTime = DateFormat('HH:mm').format(DateTime(now.year, now.month, now.day, picked.hour, picked.minute))
      );
    }
  }

  Widget _buildDateSection(){
    return Container(
      child: Column(
        children: <Widget>[
          SwitchListTile(
            value: _dateSwitchValue,
            title: Container(
              margin: EdgeInsets.symmetric(horizontal: 15),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Text(
                      "Date",
                      style: TextStyle(fontWeight: FontWeight.w700)
                    ),
                  ),
                  Text(
                    "I don't have specific dates yet.",
                    textAlign: TextAlign.right,
                    style: TextStyle(color: Colors.grey, fontSize: 12.0)
                  )
                ],
              )
            ),
            onChanged: (bool value) {setState(() { _dateSwitchValue = value;}); },
          ),
          Row(
            children: <Widget>[
              Container(
                alignment: Alignment.topLeft,
                width:80,
                margin: EdgeInsets.fromLTRB(50,0,50,0),
                child: Text (
                  "check-in",
                  style: TextStyle(fontWeight: FontWeight.w500)
                ),
              ),
              Container(
                alignment: Alignment.topRight,
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: <Widget>[
                    RaisedButton(
                      onPressed: _dateSwitchValue?
                      null: (){
                        _selectDate(context, true);
                      },
                      child: Text('select date'),
                    ),
                    RaisedButton(
                      onPressed: _dateSwitchValue?
                        null: (){
                          _selectTime(context, true);
                        },
                      child: Text('select time'),
                    )
                  ],
                )
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Container(
                alignment: Alignment.topLeft,
                width: 80,
                margin: EdgeInsets.fromLTRB(50,0,50,0),
                child: Text(
                  "check-out",
                  style: TextStyle(fontWeight: FontWeight.w500)
                ),
              ),
              Container(
                alignment: Alignment.topRight,
                margin: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: <Widget>[
                    RaisedButton(
                      onPressed: _dateSwitchValue?
                        null:(){
                        _selectDate(context, false);
                      },
                      child: Text('select date'),
                    ),
                    RaisedButton(
                      onPressed: _dateSwitchValue?
                        null:(){
                        _selectTime(context, false);
                      },
                      child: Text('select time'),
                    )
                  ],
                )
              ),
            ],
          ),
        ],
      )
    );
  }

  Widget _buildFeeSection(){
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
              child: Text(
                "Fee",
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontSize: 16.0,
                )
              ),
            ),
            Text(
              "Up to \$ "+_fee.toString(),
            ),
          ],
        ),
        Slider(
          value: _fee.toDouble(),
          min: 0.0,
          max: 1000.0,
          label: '$_fee',
          divisions: 24,
          onChanged: (double newValue) {
            setState(() {
              _fee = newValue.round();
            });
          },
        )
      ],
    );
  }

  void _showDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Please check your choice"),
          content: Container(
            height: 400,
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Icon(Icons.location_on, color: Colors.blue),
                    ),
                    Text(_locationList[_locationRadioValue])
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Icon(Icons.credit_card, color: Colors.blue),
                    ),
                    Text(_roomList[_roomRadioValue])
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: <Widget>[
                    Container(
                      height: 90,
                      alignment: Alignment.topCenter,
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Icon(Icons.star, color: Colors.blue),
                    ),
                    Container(
                      height: 90,
                      alignment: Alignment.topCenter,
                      child: _showCheckedClasses()
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: <Widget>[
                    Container(
                      height: 60.0,
                      alignment: Alignment.topCenter,
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Icon(Icons.calendar_today, color: Colors.blue),
                    ),
                    _dateSwitchValue?
                      Container(
                        height: 60.0,
                        alignment: Alignment.topCenter,
                        child: Text(
                          "You don't have specific dates yet.",
                          style: TextStyle(color: Colors.grey, fontSize: 12.0)
                        )
                      ):
                      Column(
                        children: <Widget>[
                          Row(
                            children: <Widget>[
                              Container(
                                margin: EdgeInsets.all(8.0),
                                width: 30.0,
                                child: Text('In', style: TextStyle(fontWeight: FontWeight.w500)),
                              ),
                              Text(_checkInDate + ' ' + _checkInTime),
                            ],
                          ),
                          Row(
                            children: <Widget>[
                              Container(
                                margin: EdgeInsets.all(8.0),
                                width: 30.0,
                                child: Text('Out', style: TextStyle(fontWeight: FontWeight.w500)),
                              ),
                              Text(_checkOutDate + ' ' + _checkOutTime),
                            ],
                          )
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 20),
                Row(
                  children: <Widget>[
                    Container(
                      height: 100,
                      alignment: Alignment.topCenter,
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Icon(Icons.monetization_on, color: Colors.blue),
                    ),
                    Container(
                      height: 100,
                      alignment: Alignment.topCenter,
                      child: Text("Up to \$ "+_fee.toString())
                    ),
                  ],
                ),
              ],
            )
          ),
          actions: <Widget>[
            ButtonBar(
              children: <Widget>[
                FlatButton(
                  child: Text('CANCEL'),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                RaisedButton(
                  child: Text(
                    'SEARCH',
                    style: TextStyle(color: Colors.white)
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ],
            )
          ],
        );
      },
    );
  }

  Widget _showCheckedClasses(){
    String message = '';
    for (var i = 0; i < 5; i++ ){
      if(_classCheckValue[i]){
        message = message + '\u{2B50}'*(i+1) + '\n';
      }
    }
    return Text(message);
  }

  Widget _buildSearchButton(){
    return ButtonBar(
      alignment: MainAxisAlignment.center,
      children: <Widget>[
        RaisedButton(
          onPressed: (){
            setState(() {
              _showDialog();
            });
          },
          child: Text(
            'Search',
            style: TextStyle(color: Colors.white)
          ),
          color: Colors.blue
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Search'),
      ),
      body: ListView(
        children: <Widget>[
          _buildLocationSection(),
          _buildRoomSection(),
          _buildClassSection(),
          _buildDateSection(),
          Divider(),
          _buildFeeSection(),
          _buildSearchButton(),
        ]
      )
    );
  }
}
