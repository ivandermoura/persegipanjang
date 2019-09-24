import 'package:flutter/material.dart';
class Homepage extends StatelessWidget {
var panjang =0,lebar =0,hasil=0;

  final TextEditingController t1 = new TextEditingController( text: "0" );
  final TextEditingController t2 = new TextEditingController( text: "0" );
 void hitungKeliling() {
      panjang = int.parse(t1.text);
      lebar = int.parse(t2.text);
      hasil = 2*panjang + 2*lebar;
  }

  void hitungLuas() {
     setState(() {
                 panjang = int.parse(t1.text);
                lebar = int.parse(t2.text);
                hasil = panjang * lebar;
                 });
                
              
            }
          
             void doClear() {
              
                t1.text = "0";
                t2.text = "0";
             
            }
          
            @override
            Widget build(BuildContext context) {
              return new Scaffold(
                appBar: new AppBar(
                  title: Text("Luas Segiempat"),
          
                ),
              body: new Container(
                padding: EdgeInsets.all(20.0),
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
                    new TextField(
                      keyboardType: TextInputType.number,
                      decoration: new InputDecoration(
                        hintText: "Panjang Persegi"
                      ),
                      controller: t1,
                    ),
                    new TextField(
                      keyboardType: TextInputType.number,
                      decoration: new InputDecoration(
                        hintText: "Lebar Persegi"
                      ),
                      controller: t2,
                    ),
                     new Padding(
                        padding: const EdgeInsets.only(top: 20.0),
                      ),
                       new Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          new MaterialButton(
                            child: new Text("Luas Persegi"),
                            color: Colors.greenAccent,
                            onPressed: hitungLuas,
                          ),
                          new MaterialButton(
                            child: new Text("Keliling Persegi"),
                            color: Colors.greenAccent,
                            onPressed: hitungKeliling,
                          ),
                        ],
                      ),
                      new Padding(
                        padding: const EdgeInsets.only(top: 20.0),
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
                      )
                  ],
                ),
              ),
                
              );
            }
     
       void setState(Null Function() param0) {}
     }
     
     