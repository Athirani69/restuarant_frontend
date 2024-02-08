import 'package:flutter/material.dart';

class menu extends StatelessWidget {
  const menu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(onPressed: (){}, child: Text("ADD ")),
            SizedBox(height: 10,),
            ElevatedButton(onPressed: (){}, child: Text("VIEW")),
            SizedBox(height: 10,),
            ElevatedButton(onPressed: (){}, child: Text("SEARCH"))
          ],
        ),
      ),
    );
  }
}
