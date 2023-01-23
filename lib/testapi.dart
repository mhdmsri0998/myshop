import 'package:flutter/material.dart';
import 'package:shopmy/data/myResponse.dart';
class apitest extends StatefulWidget {
  const apitest({Key? key}) : super(key: key);

  @override
  State<apitest> createState() => _apitestState();
}

class _apitestState extends State<apitest> {
  @override
  Widget build(BuildContext context) {
    myResponse.products();
    return Scaffold(
      body:FutureBuilder(
        future:myResponse.prooducts(),

     builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
          {
      return ListView.builder(

      itemCount: snapshot.data.length,

    itemBuilder: (context,i) {

        return ListTile(
          title: Text(snapshot.data.toString()),
        );
    }
    );
    }
    }
    ) ,
    );
  }
}
