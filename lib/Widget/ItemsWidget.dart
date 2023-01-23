import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter/material.dart';
import 'package:shopmy/Widget/load.dart';
import 'package:shopmy/data/myResponse.dart';
import 'package:shopmy/screen/PageItem.dart';
class ItemsWidget extends StatelessWidget {
  const ItemsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: myResponse.products(),
        builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
          if (snapshot.hasData) {
            return GridView.count(
              childAspectRatio: 0.71,

              physics: NeverScrollableScrollPhysics(),
              crossAxisCount: 2,
              shrinkWrap: true,
              children: [
                for(int i = 0; i < snapshot.data.length; i++)



                  InkWell(onTap: () {
                    Get.to(PageItem(
                      title: snapshot.data['data'][i]['title'].toString(),
                      id: snapshot.data['data'][i]['id'].toString(),

                      img: snapshot.data['data'][i]['image'].toString(),
                      rate:  snapshot.data['data'][i]['rate'].toString(),
                      desc: snapshot.data['data'][i]['description'].toString(),

                    ));
                  },

                    child: Container(
                      height: 550,


                      padding: EdgeInsets.only(left: 15, right: 15, top: 10),
                      margin: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(Radius.circular(20))
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.all(10),
                            child: Image.network(snapshot
                                .data['data'][i]['image'].toString(),
    // loadingBuilder:
    //
    // (BuildContext context, Widget child, ImageChunkEvent? loadingProgress) {
    // return loading();},),
    //
    )

                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              alignment: Alignment.center,
                              child: Text(
                                snapshot.data['data'][i]['title'].toString(),
                                style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black
                                ),),
                            ),
                          ),
                          Padding(

                            padding: const EdgeInsets.only(top: 5, bottom: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                //    int h=2;
                                Container(

                                  child: RatingBar.builder(
                                    initialRating: snapshot.data['data'][i]['rate'],
                                    minRating: 1,
                                    direction: Axis.horizontal,
                                  allowHalfRating: true,
                                    itemCount: 4,
                                    itemPadding: EdgeInsets.symmetric(
                                        horizontal: 2.0),
                                    itemBuilder: (context, _) =>
                                        Icon(
                                          Icons.star,
                                          size: 1,
                                          color: Colors.amber,
                                        ),
                                    onRatingUpdate: (rating) {
                                      print(rating);
                                    },
                                  ),
                                ),
                                Row(
                                  children: [
                                  ],
                                )
                              ],
                            ),
                          )


                        ],
                      ),

                    ),
                  )
              ],
            );
          }
          else return loading();
          },
    );
  }
}
