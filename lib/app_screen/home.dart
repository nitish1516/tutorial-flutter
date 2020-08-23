import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          padding: EdgeInsets.only(left: 16.0, right: 16.0, top: 40.0),
          alignment: Alignment.center,
          color: Colors.deepPurple,
          child: Column(
            children: <Widget>[
              Row(
                children: <Widget>[
                  Expanded(
                    child: Text(
                      "Spice Jet",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 35.0,
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.w300,
                          color: Colors.white),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      "From Mumbai to Delhi",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 25.0,
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.w300,
                          color: Colors.white),
                    ),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Expanded(
                    child: Text(
                      "Air India",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 35.0,
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.w300,
                          color: Colors.white),
                    ),
                  ),
                  Expanded(
                    child: Text(
                      "From Jaipur to Delhi",
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                          decoration: TextDecoration.none,
                          fontSize: 25.0,
                          fontFamily: 'Raleway',
                          fontWeight: FontWeight.w300,
                          color: Colors.white),
                    ),
                  ),
                ],
              ),
              ImagesAssets(),
              FlightBookingButton()
            ],
          )),
    );

    throw UnimplementedError();
  }
}

class ImagesAssets extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Image(
      image: AssetImage('images/flight.png'),
      width: 250.0,
      height: 250.0,
    );
    throw UnimplementedError();
  }
}

class FlightBookingButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 30.0),
      width: 250.0,
      height: 50.0,
      child: RaisedButton(
          color: Colors.deepOrange,
          child: Text(
            'Book your flight',
            style: TextStyle(
                fontSize: 20.0,
                fontFamily: 'Raleway',
                fontWeight: FontWeight.w700,
                color: Colors.white),
          ),
          elevation: 6.0,
          onPressed: () {
            bookFlight(context);
          }),
    );
    throw UnimplementedError();
  }

  void bookFlight(BuildContext context) {
    var alertDialog = AlertDialog(
      title: Text("Flight Booked Successfully"),
      content: Text("Have a pleasent flight"),
      actions: <Widget>[
        FlatButton(
          child: Text('Ok'),
          onPressed: () => Navigator.of(context).pop(),
        )
      ],
    );
    showDialog(
        context: context, builder: (BuildContext context) => alertDialog);
  }
}
