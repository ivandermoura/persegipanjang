import 'package:flutter/material.dart';

class Panjangvalidator {
  static String validate(String value) {
    return value.isEmpty ? 'kolom panjang tidak boleh kosong' : null;
  }
}

class Persegipanjang {
  int _hasil, _panjang, _lebar;

  
  Persegipanjang() {
    _hasil = 0;
    _panjang = 0;
    _lebar = 0;

    
  }
  int get panjang => _panjang;

   
  set panjang(int nilai) {
    if (nilai <= 0) {
      nilai *= -1;
    }
    _hasil = nilai;
  }

  int get lebar => _lebar;
  set lebar(int nilai) {
    if (nilai <= 0) {
      nilai *= -1;
    }
    _hasil = nilai;
  }

  int get hasil => _hasil;
  set hasil(int nilai) {
    if (nilai <= 0) {
      nilai *= -1;
    }
    _hasil = nilai;
  }

}

class Homepage extends StatefulWidget {
  Homepage({Key key, this.title}) : super(key: key);

  final String title;
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  var panjang = 0, lebar = 0, hasil = 0;
  Persegipanjang p = new Persegipanjang();

  final TextEditingController t1 = new TextEditingController(text: "0");
  final TextEditingController t2 = new TextEditingController(text: "0");

  void hitungKeliling() {
    setState(() {
      lebar = int.parse(t1.text); 
      panjang = int.parse(t2.text);
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
      t1.text = "0";
      t2.text = "0";
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
              key: Key('TPersegi'),
              validator: Panjangvalidator.validate,
            ),
            new TextFormField(
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(hintText: "Lebar Persegi"),
              controller: t2,
              key: Key('LPersegi'),
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
                  key: Key('keliling'),
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
                  child: new Text("Bersihkan"),
                  color: Colors.greenAccent,
                  onPressed: doClear,
                  key: Key('Clear'),
                ),
              ],
            ),
            new Padding(
              padding: const EdgeInsets.only(top: 5.0),
            ),
          ],
        ),
      ),
    );
  }
}
