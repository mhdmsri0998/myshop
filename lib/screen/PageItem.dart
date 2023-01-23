import 'package:get/get.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter/material.dart';
import 'package:shopmy/Widget/ItemAppBar.dart';
import 'package:shopmy/Widget/buttomItemPage.dart';
import 'package:shopmy/Widget/load.dart';

import '../Widget/comment.dart';
class PageItem extends StatefulWidget {
final String title;
final String rate;
final String img;
final String id;



final String desc;


  const PageItem({Key? key,required this.id,
    required this.desc,required this.rate,required this.title,required this.img}) : super(key: key);

  @override
  State<PageItem> createState() => _PageItemState();
}

class _PageItemState extends State<PageItem> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: buttomItemPage(id: widget.id,),
      backgroundColor: Color(0xFFEDECF2),
      body: ListView(
        children: [
          ItemAppBar(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.network(widget.img.toString(),height: 300,
          //
          //     loadingBuilder:
          //
          //    (BuildContext context, Widget child, ImageChunkEvent? loadingProgress) {
          // return loading();
          //},
            ),
          ),
          Container(
            width: double.infinity,
            color: Colors.white,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Padding(padding: EdgeInsets.only(top: 30,bottom: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(widget.title,style: TextStyle(
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF475269),

                          
                      ),),
                      Icon(Icons.favorite,color: Colors.deepOrange,size: 30,),

                    ],
                    
                  ),
                  ),

                  Row(

                    children: [
                    RatingBar.builder(
                    initialRating: 3,
                    minRating: 1,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    itemPadding: EdgeInsets.symmetric(horizontal: 4.0),
                    itemBuilder: (context, _) => Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    onRatingUpdate: (rating) {
                      print(rating);
                    },
                  ),
          //Spacer(),

                    ],
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
         child: Text('10',style: TextStyle(
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
           child: Icon(CupertinoIcons.minus,size: 20,),

         ),
       ),

     ],
   )   ,            Padding(
                    padding: const EdgeInsets.symmetric(vertical: 30),
                    child: Text(widget.desc.toString(),style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF475269),



                    ),textAlign: TextAlign.justify,),
                  ),

                  Container(
                    alignment: Alignment.centerLeft,
                    margin: EdgeInsets.only(left: 10,top: 15),
                    child: Text("Comment",style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFFFF7466)
                    ),),



                  ),
                  Container(
                      height: MediaQuery.of(context).size.height/2,
                      child: Comment(id: widget.id,))

                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
