import 'package:flutter/material.dart';
class HomeBottomBar extends StatelessWidget {
  const HomeBottomBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return

      Container(
      height: 65,
      padding: EdgeInsets.symmetric(vertical: 8.0),
      decoration: BoxDecoration(
        color: Color(0xFFFF7466),
        borderRadius:BorderRadius.only(
          topLeft: Radius.circular(5),
          topRight: Radius.circular(5)
        )
      ),
      child: Row(
        mainAxisAlignment:
        MainAxisAlignment.spaceEvenly,
        children: [
          Icon(Icons.home,color: Colors.white,size: 25,),

          Icon(Icons.person,color: Colors.white,size: 25,),
          Icon(Icons.favorite,color: Colors.white,size: 25,),
          Icon(Icons.list,color: Colors.white,size: 25,),

        ],
      ),


    );
  }
}
