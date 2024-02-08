import 'package:flutter/material.dart';

class add extends StatefulWidget {
  const add({super.key});

  @override
  State<add> createState() => _addState();
}

class _addState extends State<add> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("ADD FOOD DETAILS"),
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(15),
            width: double.infinity,
            child: Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                    labelText: ("Enter orderid"),
                    border: OutlineInputBorder()
                  ),
                ),
                SizedBox(height: 10,),
                TextField(
                  decoration: InputDecoration(
                      labelText: ("Enter Customer name"),
                      border: OutlineInputBorder()
                  ),
                ),
                SizedBox(height: 10,),
                TextField(
                  decoration: InputDecoration(
                      labelText: ("Enter customer number"),
                      border: OutlineInputBorder()
                  ),
                ),
                SizedBox(height: 10,),
                TextField(
                  decoration: InputDecoration(
                      labelText: ("Food details"),
                      border: OutlineInputBorder()
                  ),
                ),
                SizedBox(height: 10,),
                TextField(
                  decoration: InputDecoration(
                      labelText: ("Price"),
                      border: OutlineInputBorder()
                  ),
                ),
                SizedBox(height: 10,),
                SizedBox(
                    width: 200,
                    child: ElevatedButton(onPressed: (){}, child: Text("ADD FOOD"))),
                SizedBox(height: 10,),
                SizedBox(
                  width: 200,
                  child: ElevatedButton(onPressed: (){
                    Navigator.pop(context);
                  }, child: Text("BACK")),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
