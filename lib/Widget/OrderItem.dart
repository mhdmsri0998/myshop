import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopmy/data/myResponse.dart';
class OrderItem extends StatefulWidget {
  final String img ;
  final String title ;
  final String price ;
  final String status;

  final String id;

  const OrderItem({Key? key,required this.img,
    required this.title,
    required this.price,
    required this.status,
    required this.id

  }) : super(key: key);

  @override
  State<OrderItem> createState() => _OrderItemState();
}

class _OrderItemState extends State<OrderItem> {
  int i=0;
  @override

  @override
  Widget build(BuildContext context) {

    return Container(
      padding: EdgeInsets.all(10),
      margin: EdgeInsets.symmetric(vertical: 10,horizontal: 10),
      height: 190,
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [

          ],
          borderRadius:BorderRadius.circular(10)


      ),
      child: Row(

        children: [

          Container(
            height: 150,
            width: 150,
            margin: EdgeInsets.only(right: 15),
            child: Image.network(widget.img),
          ),
          SizedBox(width: 20,),
          Padding(padding: EdgeInsets.symmetric(vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(widget.title,
              style: TextStyle(
                fontSize:18,
                fontWeight: FontWeight.bold,
                color: Color(0xff475269),
              ),),
              Text("",
                style: TextStyle(
                  fontSize:18,
                  fontWeight: FontWeight.bold,
                  color: Colors.deepOrange,
                ),),

              Container(
                alignment: Alignment.center,

                decoration: BoxDecoration(
                    color:
                    widget.status=="InProgress"?

                    Colors.deepOrange:widget.status=="Done"?Colors.green
                    :Colors.black,
                    boxShadow: [

                    ],
                    borderRadius:BorderRadius.circular(10)


                ),

                child: Padding(
                  padding: const EdgeInsets.all(4.0),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Icon(
                          widget.status=="InProgress"?

                          Icons.access_alarm: Icons.done_outline_sharp,

                          color: Colors.white,size: 20,),
                      ),
                      Text(widget.status,

                        style: TextStyle(

                          fontSize:18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),),
                    ],
                  ),
                ),
              ),

              Row(
                children: [

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 3,
                                blurRadius: 10,
                                offset: Offset(0, 3)
                            ),

                          ]

                      ),
                      child: Icon(CupertinoIcons.add,size: 20,),

                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(i.toString(),style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF475269),


                    ),),
                  ),

                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                spreadRadius: 3,
                                blurRadius: 10,
                                offset: Offset(0, 3)
                            ),

                          ]

                      ),
                      child: InkWell(
                        onTap: (){
                          void setState(VoidCallback fn) {
                            i++;
                            // TODO: implement setState


                          }                      },
                          child: Icon(CupertinoIcons.minus,size: 20,)),

                    ),
                  ),

                ],
              ),           ],
          ),),
          SizedBox(width: 10,),

        Spacer(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(icon:Icon(Icons.delete,size: 30,),color: Colors.deepOrange, onPressed: () {
                  myResponse.order_del(widget.id);
                },)
              ],
            ),
          )
        
        ],
          )



    );
  }
}
