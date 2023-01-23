import 'package:flutter/material.dart';
import 'package:shopmy/data/myResponse.dart';
//buttomItemPage

class buttomItemPage extends StatefulWidget {

  final String id;






  const buttomItemPage({Key? key,required this.id,
   }) : super(key: key);

  @override
  State<buttomItemPage> createState() => _buttomItemPageState();
}

class _buttomItemPageState extends State<buttomItemPage> {
  Widget build(BuildContext context) {
    return       Container(
      height: 65,
      padding: EdgeInsets.symmetric(vertical: 8.0),
      decoration: BoxDecoration(
          color: Colors.white,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text('24 \$',style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.black,



            ),),
          ),
          MaterialButton(onPressed: (){
            myResponse.order(widget.id);
          },
            color:

            Colors.deepOrange,  child: Row(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text('Add To Cart',style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,



                      ),),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(Icons.shopping_cart,color: Colors.white,size: 25,),
                    ),
                  ],
                ),

              ],
            ),
          ),




        ],
      ),


    );

  }
}
