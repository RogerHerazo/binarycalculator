import 'package:flutter/material.dart';

class Converter extends StatefulWidget {
  Converter({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _ConverterState createState() => _ConverterState();
}

class _ConverterState extends State<Converter> {
  String _binaryvalue = "";
  String _decimalvalue = "";
  bool isvisiblebin = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              child: FlatButton(
                onPressed: () {
                  setState(() {
                    _binaryvalue = "";
                    _decimalvalue = "";
                    isvisiblebin = !isvisiblebin;
                  });
                },
                color: Colors.blue,
                child: Center(
                  child: Text(isvisiblebin ? "Decimal -> Binary" : "Binary -> Decimal"),
                ),
              ),
            ),
            isvisiblebin
                ? Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Flexible(
                          flex: 1,
                          child: Container(
                            margin: const EdgeInsets.all(10.0),
                            padding: const EdgeInsets.all(10.0),
                            alignment: Alignment.center,
                            child: Column(children: <Widget>[
                              Flexible(
                                fit: FlexFit.tight,
                                child: Container(
                                  margin: const EdgeInsets.all(1.0),
                                  padding: const EdgeInsets.all(1.0),
                                  alignment: Alignment.center,
                                  child: Center(
                                    child: Align(
                                      alignment: Alignment.centerRight,
                                      child: Text('$_binaryvalue',
                                          style: TextStyle(
                                              color: Colors.red,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 30)),
                                    ),
                                  ),
                                ),
                              ),
                              Flexible(
                                fit: FlexFit.tight,
                                child: Container(
                                  margin: const EdgeInsets.all(1.0),
                                  padding: const EdgeInsets.all(1.0),
                                  alignment: Alignment.center,
                                  child: Center(
                                    child: Align(
                                      alignment: Alignment.centerRight,
                                      child: Text('$_decimalvalue',
                                          style: TextStyle(
                                              color: Colors.red,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 30)),
                                    ),
                                  ),
                                ),
                              ),
                            ]),
                          ),
                        ),
                        Flexible(
                          flex: 3,
                          child: Container(
                            margin: const EdgeInsets.all(5.0),
                            padding: const EdgeInsets.all(5.0),
                            alignment: Alignment.center,
                            child: Column(
                              children: <Widget>[
                                Flexible(
                                  flex: 1,
                                  child: Row(children: <Widget>[
                                    Flexible(
                                      flex: 1,
                                      fit: FlexFit.tight,
                                      child: Container(
                                        margin: const EdgeInsets.all(5.0),
                                        padding: const EdgeInsets.all(5.0),
                                        alignment: Alignment.center,
                                        child: FlatButton(
                                          onPressed: () {
                                            setState(() {
                                              _decimalvalue =
                                                  _decimalvalue + "1";
                                              _binaryvalue = int.parse(
                                                      _decimalvalue,
                                                      radix: 10)
                                                  .toRadixString(2);
                                            });
                                          },
                                          color: Colors.blue,
                                          child: Center(
                                            child: Text(
                                              "1",
                                              style: TextStyle(fontSize: 100.0),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                        flex: 1,
                                        fit: FlexFit.tight,
                                        child: Container(
                                          margin: const EdgeInsets.all(5.0),
                                          padding: const EdgeInsets.all(5.0),
                                          alignment: Alignment.center,
                                          child: FlatButton(
                                            onPressed: () {
                                              setState(() {
                                                _decimalvalue =
                                                    _decimalvalue + "2";
                                                _binaryvalue = int.parse(
                                                        _decimalvalue,
                                                        radix: 10)
                                                    .toRadixString(2);
                                              });
                                            },
                                            color: Colors.blue,
                                            child: Center(
                                              child: Text(
                                                "2",
                                                style:
                                                    TextStyle(fontSize: 100.0),
                                              ),
                                            ),
                                          ),
                                        )),
                                    Flexible(
                                      flex: 1,
                                      fit: FlexFit.tight,
                                      child: Container(
                                        margin: const EdgeInsets.all(5.0),
                                        padding: const EdgeInsets.all(5.0),
                                        alignment: Alignment.center,
                                        child: FlatButton(
                                          onPressed: () {
                                            setState(() {
                                              _decimalvalue =
                                                  _decimalvalue + "3";
                                              _binaryvalue = int.parse(
                                                      _decimalvalue,
                                                      radix: 10)
                                                  .toRadixString(2);
                                            });
                                          },
                                          color: Colors.blue,
                                          child: Center(
                                            child: Text(
                                              "3",
                                              style: TextStyle(fontSize: 100.0),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ]),
                                ),
                                Flexible(
                                  flex: 1,
                                  child: Row(children: <Widget>[
                                    Flexible(
                                      flex: 1,
                                      fit: FlexFit.tight,
                                      child: Container(
                                        margin: const EdgeInsets.all(5.0),
                                        padding: const EdgeInsets.all(5.0),
                                        alignment: Alignment.center,
                                        child: FlatButton(
                                          onPressed: () {
                                            setState(() {
                                              _decimalvalue =
                                                  _decimalvalue + "4";
                                              _binaryvalue = int.parse(
                                                      _decimalvalue,
                                                      radix: 10)
                                                  .toRadixString(2);
                                            });
                                          },
                                          color: Colors.blue,
                                          child: Center(
                                            child: Text(
                                              "4",
                                              style: TextStyle(fontSize: 100.0),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                        flex: 1,
                                        fit: FlexFit.tight,
                                        child: Container(
                                          margin: const EdgeInsets.all(5.0),
                                          padding: const EdgeInsets.all(5.0),
                                          alignment: Alignment.center,
                                          child: FlatButton(
                                            onPressed: () {
                                              setState(() {
                                                _decimalvalue =
                                                    _decimalvalue + "5";
                                                _binaryvalue = int.parse(
                                                        _decimalvalue,
                                                        radix: 10)
                                                    .toRadixString(2);
                                              });
                                            },
                                            color: Colors.blue,
                                            child: Center(
                                              child: Text(
                                                "5",
                                                style:
                                                    TextStyle(fontSize: 100.0),
                                              ),
                                            ),
                                          ),
                                        )),
                                    Flexible(
                                      flex: 1,
                                      fit: FlexFit.tight,
                                      child: Container(
                                        margin: const EdgeInsets.all(5.0),
                                        padding: const EdgeInsets.all(5.0),
                                        alignment: Alignment.center,
                                        child: FlatButton(
                                          onPressed: () {
                                            setState(() {
                                              _decimalvalue =
                                                  _decimalvalue + "6";
                                              _binaryvalue = int.parse(
                                                      _decimalvalue,
                                                      radix: 10)
                                                  .toRadixString(2);
                                            });
                                          },
                                          color: Colors.blue,
                                          child: Center(
                                            child: Text(
                                              "6",
                                              style: TextStyle(fontSize: 100.0),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ]),
                                ),
                                Flexible(
                                  flex: 1,
                                  child: Row(children: <Widget>[
                                    Flexible(
                                      flex: 1,
                                      fit: FlexFit.tight,
                                      child: Container(
                                        margin: const EdgeInsets.all(5.0),
                                        padding: const EdgeInsets.all(5.0),
                                        alignment: Alignment.center,
                                        child: FlatButton(
                                          onPressed: () {
                                            setState(() {
                                              _decimalvalue =
                                                  _decimalvalue + "7";
                                              _binaryvalue = int.parse(
                                                      _decimalvalue,
                                                      radix: 10)
                                                  .toRadixString(2);
                                            });
                                          },
                                          color: Colors.blue,
                                          child: Center(
                                            child: Text(
                                              "7",
                                              style: TextStyle(fontSize: 100.0),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Flexible(
                                        flex: 1,
                                        fit: FlexFit.tight,
                                        child: Container(
                                          margin: const EdgeInsets.all(5.0),
                                          padding: const EdgeInsets.all(5.0),
                                          alignment: Alignment.center,
                                          child: FlatButton(
                                            onPressed: () {
                                              setState(() {
                                                _decimalvalue =
                                                    _decimalvalue + "8";
                                                _binaryvalue = int.parse(
                                                        _decimalvalue,
                                                        radix: 10)
                                                    .toRadixString(2);
                                              });
                                            },
                                            color: Colors.blue,
                                            child: Center(
                                              child: Text(
                                                "8",
                                                style:
                                                    TextStyle(fontSize: 100.0),
                                              ),
                                            ),
                                          ),
                                        )),
                                    Flexible(
                                      flex: 1,
                                      fit: FlexFit.tight,
                                      child: Container(
                                        margin: const EdgeInsets.all(5.0),
                                        padding: const EdgeInsets.all(5.0),
                                        alignment: Alignment.center,
                                        child: FlatButton(
                                          onPressed: () {
                                            setState(() {
                                              _decimalvalue =
                                                  _decimalvalue + "9";
                                              _binaryvalue = int.parse(
                                                      _decimalvalue,
                                                      radix: 10)
                                                  .toRadixString(2);
                                            });
                                          },
                                          color: Colors.blue,
                                          child: Center(
                                            child: Text(
                                              "9",
                                              style: TextStyle(fontSize: 100.0),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ]),
                                ),
                                Flexible(
                                  flex: 1,
                                  child: Row(children: <Widget>[
                                    Flexible(
                                      flex: 1,
                                      fit: FlexFit.tight,
                                      child: Container(
                                        margin: const EdgeInsets.all(5.0),
                                        padding: const EdgeInsets.all(5.0),
                                        alignment: Alignment.center,
                                        child: FlatButton(
                                          onPressed: () {
                                            setState(() {
                                              _decimalvalue =
                                                  _decimalvalue + "0";
                                              _binaryvalue = int.parse(
                                                      _decimalvalue,
                                                      radix: 10)
                                                  .toRadixString(2);
                                            });
                                          },
                                          color: Colors.blue,
                                          child: Center(
                                            child: Text(
                                              "0",
                                              style: TextStyle(fontSize: 100.0),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ]),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Flexible(
                            flex: 1,
                            child: Container(
                              margin: const EdgeInsets.only(
                                  left: 20.0, right: 20.0),
                              padding: const EdgeInsets.all(5.0),
                              alignment: Alignment.center,
                              child: FlatButton(
                                onPressed: () {
                                  setState(() {
                                    _binaryvalue = "";
                                    _decimalvalue = "";
                                  });
                                },
                                color: Colors.blue,
                                child: Center(
                                  child: Text(
                                    "Clear",
                                    style: TextStyle(fontSize: 50.0),
                                  ),
                                ),
                              ),
                            )),
                      ],
                    ),
                  )
                : Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Flexible(
                          flex: 1,
                          child: Container(
                            margin: const EdgeInsets.all(10.0),
                            padding: const EdgeInsets.all(10.0),
                            alignment: Alignment.center,
                            child: Column(children: <Widget>[
                              Flexible(
                                fit: FlexFit.tight,
                                child: Container(
                                  margin: const EdgeInsets.all(1.0),
                                  padding: const EdgeInsets.all(1.0),
                                  alignment: Alignment.center,
                                  child: Center(
                                    child: Align(
                                      alignment: Alignment.centerRight,
                                      child: Text('$_binaryvalue',
                                          style: TextStyle(
                                              color: Colors.red,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 30)),
                                    ),
                                  ),
                                ),
                              ),
                              Flexible(
                                fit: FlexFit.tight,
                                child: Container(
                                  margin: const EdgeInsets.all(1.0),
                                  padding: const EdgeInsets.all(1.0),
                                  alignment: Alignment.center,
                                  child: Center(
                                    child: Align(
                                      alignment: Alignment.centerRight,
                                      child: Text('$_decimalvalue',
                                          style: TextStyle(
                                              color: Colors.red,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 30)),
                                    ),
                                  ),
                                ),
                              ),
                            ]),
                          ),
                        ),
                        Flexible(
                          flex: 3,
                          child: Container(
                            margin: const EdgeInsets.all(10.0),
                            padding: const EdgeInsets.all(10.0),
                            alignment: Alignment.center,
                            child: Row(children: <Widget>[
                              Flexible(
                                flex: 1,
                                fit: FlexFit.tight,
                                child: Container(
                                  margin: const EdgeInsets.all(5.0),
                                  padding: const EdgeInsets.all(5.0),
                                  alignment: Alignment.center,
                                  child: FlatButton(
                                    onPressed: () {
                                      setState(() {
                                        _binaryvalue = _binaryvalue + "0";
                                        //_decimalvalue = int.parse(_binaryvalue, radix: 2);
                                        _decimalvalue =
                                            int.parse(_binaryvalue, radix: 2)
                                                .toString();
                                      });
                                    },
                                    color: Colors.blue,
                                    child: Center(
                                      child: Text(
                                        "0",
                                        style: TextStyle(fontSize: 100.0),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Flexible(
                                  flex: 1,
                                  fit: FlexFit.tight,
                                  child: Container(
                                    margin: const EdgeInsets.all(5.0),
                                    padding: const EdgeInsets.all(5.0),
                                    alignment: Alignment.center,
                                    child: FlatButton(
                                      onPressed: () {
                                        setState(() {
                                          _binaryvalue = _binaryvalue + "1";
                                          //_decimalvalue = int.parse(_binaryvalue, radix: 2);
                                          _decimalvalue =
                                              int.parse(_binaryvalue, radix: 2)
                                                  .toString();
                                        });
                                      },
                                      color: Colors.blue,
                                      child: Center(
                                        child: Text(
                                          "1",
                                          style: TextStyle(fontSize: 100.0),
                                        ),
                                      ),
                                    ),
                                  ))
                            ]),
                          ),
                        ),
                        Flexible(
                            flex: 1,
                            child: Container(
                              margin: const EdgeInsets.only(
                                  left: 20.0, right: 20.0),
                              padding: const EdgeInsets.all(5.0),
                              alignment: Alignment.center,
                              child: FlatButton(
                                onPressed: () {
                                  setState(() {
                                    _binaryvalue = "";
                                    _decimalvalue = "";
                                  });
                                },
                                color: Colors.blue,
                                child: Center(
                                  child: Text(
                                    "Clear",
                                    style: TextStyle(fontSize: 50.0),
                                  ),
                                ),
                              ),
                            )),
                      ],
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}
