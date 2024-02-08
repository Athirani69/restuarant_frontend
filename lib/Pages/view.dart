import 'package:flutter/material.dart';
import 'package:restuarant/Service/resservc.dart';

import '../Models/resmodel.dart';

class vew extends StatefulWidget {
  const vew({super.key});

  @override
  State<vew> createState() => _vewState();
}

class _vewState extends State<vew> {
  Future<List<Restaurant>> ? data;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    data=Api().getdata();
  }
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(),
        body: FutureBuilder(future: data, builder: (context,snapshot){
          if(snapshot.hasData&&snapshot.data!.isNotEmpty)
          {
            return ListView.builder(itemBuilder: (context,index){
              return Card(
                child: Column(
                  children: [
                    ListTile(
                      title: Text(snapshot.data![index].orderid),
                      subtitle: Text(snapshot.data![index].custname+"\n"+snapshot.data![index].custfon+"\n"+snapshot.data![index].fddtails+"\n"+snapshot.data![index].price),
                    )
                  ],
                ),
              );
            });
          }
          else
          {
            return CircularProgressIndicator();
          }
        }),
      ),
    );
  }
}
