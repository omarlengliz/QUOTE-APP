import 'package:flutter/material.dart';


class wisdom extends StatefulWidget {
  @override
  _wisdomState createState() => _wisdomState();
}

class _wisdomState extends State<wisdom> {
    int _index=0;

    List quotes = 
    [
      "Life isn’t about getting and having, it’s about giving and being.",
      "Whatever the mind of man can conceive and believe, it can achieve.",
      "Strive not to be a success, but rather to be of value.",
      "Two roads diverged in a wood, and I—I took the one less traveled by, And that has made all the difference."

    ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
              child: Column(mainAxisAlignment: MainAxisAlignment.center,
            
              children: [
                  Expanded(
                    child: Center(
                      child: Container(
                          width: 350,
                          height:200 ,
                          margin: EdgeInsets.all(30.0),
                          decoration: BoxDecoration
                          (color: Colors.greenAccent,borderRadius: BorderRadius.circular(14.5)),
                        
                        child: Center(child: Text(quotes[_index %quotes.length],style: TextStyle(color: Colors.grey.shade600 , fontStyle: FontStyle.italic,fontSize: 16.5),))),
                    ),
                  ),Divider(thickness:1.3 ,),
                Padding(
                  padding: const EdgeInsets.only(top : 8.0),
                  child: FlatButton.icon(onPressed: _showQuote,color: Colors.greenAccent.shade400,
                   icon: Icon(Icons.wb_sunny), label: Text("Inspire Me !! ",style:TextStyle(
                     color:Colors.white,fontSize: 18.8,
                   ))),
                ),
                Spacer()
              ],
            ),

        ),
    );
  }

  void _showQuote() {
    setState(() {
        _index+=1;
      

    });
    
  }
}