import 'package:flutter/material.dart';

class srch extends StatefulWidget {
  const srch({super.key});

  @override
  State<srch> createState() => _srchState();
}

class _srchState extends State<srch> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: Container(
          padding: EdgeInsets.all(15),
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                  labelText: ("Enter the search value"),
                  border: OutlineInputBorder()
                ),
              ),
              SizedBox(height: 10,),
              ElevatedButton(onPressed: (){}, child: Text("SEARCH")),
              SizedBox(height: 10,),
              ElevatedButton(onPressed: (){
                Navigator.pop(context);
              }, child: Text("BACK"))
            ],
          ),
        ),
      ),
    );
  }
}
