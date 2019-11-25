import 'package:flutter/material.dart';



class Panjangvalidator {
  static String validate(String value) {
    return value.isEmpty ? 'kolom panjang tidak boleh kosong' : null;

  }
}

class Homepage extends StatefulWidget {
  
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  var panjang = 0, lebar = 0, hasil = 0;

  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  final TextEditingController t1 = new TextEditingController(text: "-");
  final TextEditingController t2 = new TextEditingController(text: "-");

  void hitungKeliling() {
    setState(() {
      panjang = int.parse(t1.text);
      lebar = int.parse(t2.text);
      hasil = 2 * panjang + 2 * lebar;
    });
  }

  void hitungLuas() {
    setState(() {
      panjang = int.parse(t1.text);
      lebar = int.parse(t2.text);
      hasil = panjang * lebar;
    });
  }

  void doClear() {
    setState(() {
      t1.text = "-";
      t2.text = "-";
      hasil = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: Text("Luas Segiempat"),
      ),
      body: new Container(
        padding: EdgeInsets.all(10.0),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text(
              "Output : $hasil",
              style: new TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.purple),
            ),
            new TextFormField(
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(hintText: "Panjang Persegi"),
              controller: t1,
              validator: Panjangvalidator.validate,
            ),
            new TextFormField(
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(hintText: "Lebar Persegi"),
              controller: t2,
            ),
            new Padding(
              padding: const EdgeInsets.only(top: 10.0),
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new MaterialButton(
                  child: new Text("Luas Persegi"),
                  color: Colors.greenAccent,
                  onPressed: hitungLuas,
                  key: Key('luas'),
                ),
                new MaterialButton(
                  child: new Text("Keliling Persegi"),
                  color: Colors.greenAccent,
                  onPressed: hitungKeliling,
                ),
              ],
            ),
            new Padding(
              padding: const EdgeInsets.only(top: 10.0),
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                new MaterialButton(
                  child: new Text("Clear"),
                  color: Colors.greenAccent,
                  onPressed: doClear,
                ),
              ],
            ),
            new Padding(
              padding: const EdgeInsets.only(top: 5.0),
            ),
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
