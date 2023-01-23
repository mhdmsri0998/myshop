import 'package:flutter/material.dart';
class ItemAppBar extends StatefulWidget {
  const ItemAppBar({Key? key}) : super(key: key);

  @override
  State<ItemAppBar> createState() => _ItemAppBarState();
}

class _ItemAppBarState extends State<ItemAppBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.symmetric(vertical: 20,horizontal: 20),
      child: Row(
        children: [
          InkWell(
            onTap: (){},
          child: Icon(
            Icons.arrow_back,
            size: 20,
            color: Colors.black,

          ),),
          Text('Product',style: TextStyle(
            fontSize: 25,


            fontWeight: FontWeight.bold
          ),),
          Spacer(),
          InkWell(
            onTap: (){},
            child: Icon(
              Icons.arrow_back,
              size: 20,
              color: Colors.black,

            ),),


        ],
      ),
    );
  }
}
