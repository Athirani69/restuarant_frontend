import 'package:flutter/material.dart';

class add extends StatefulWidget {
  const add({super.key});

  @override
  State<add> createState() => _addState();
}

class _addState extends State<add> {
  TextEditingController id=new TextEditingController();
  TextEditingController nm=new TextEditingController();
  TextEditingController fon=new TextEditingController();
  TextEditingController fd=new TextEditingController();
  TextEditingController prc=new TextEditingController();
  void send() async{
    final resp=await Api().sendData(id.text, nm.text, fon.text, fd.text,prc.text);
    if(resp["status"]=="success")
    {
      print("added");
    }
    else
    {
      print("not added");
    }
  }
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
                  controller: id,
                  decoration: InputDecoration(
                    labelText: ("Enter orderid"),
                    border: OutlineInputBorder()
                  ),
                ),
                SizedBox(height: 10,),
                TextField(
                  controller: nm,
                  decoration: InputDecoration(
                      labelText: ("Enter Customer name"),
                      border: OutlineInputBorder()
                  ),
                ),
                SizedBox(height: 10,),
                TextField(
                  controller: fon,
                  decoration: InputDecoration(
                      labelText: ("Enter customer number"),
                      border: OutlineInputBorder()
                  ),
                ),
                SizedBox(height: 10,),
                TextField(
                  controller: fd,
                  decoration: InputDecoration(
                      labelText: ("Food details"),
                      border: OutlineInputBorder()
                  ),
                ),
                SizedBox(height: 10,),
                TextField(
                  controller: prc,
                  decoration: InputDecoration(
                      labelText: ("Price"),
                      border: OutlineInputBorder()
                  ),
                ),
                SizedBox(height: 10,),
                SizedBox(
                    width: 200,
                    child: ElevatedButton(onPressed: send, child: Text("ADD FOOD"))),
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
