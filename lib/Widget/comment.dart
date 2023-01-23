import 'package:comment_box/comment/comment.dart';
import 'package:flutter/material.dart';
import 'package:shopmy/Widget/load.dart';
import 'package:shopmy/data/myResponse.dart';
class Comment extends StatefulWidget {
  final String id;
  const Comment({Key? key,required this.id}) : super(key: key);

  @override
  State<Comment> createState() => _CommentState();
}

class _CommentState extends State<Comment> {
  final formKey = GlobalKey<FormState>();
  final TextEditingController commentController = TextEditingController();


  Widget commentChild() {
    return FutureBuilder(
      future: myResponse.comments(widget.id),
      builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
        if (snapshot.hasData) {

          return ListView(
        children: [
          for (var i = 0; i < snapshot.data.length; i++)
            Padding(
              padding: const EdgeInsets.fromLTRB(2.0, 8.0, 2.0, 0.0),
              child: ListTile(
                leading: GestureDetector(
                  onTap: () async {
                    // Display the image in large form.
                    print("Comment Clicked");
                  },
                  child: Container(
                    height: 50.0,
                    width: 50.0,
                    decoration: new BoxDecoration(
                        color: Colors.blue,
                        borderRadius: new BorderRadius.all(Radius.circular(50))),
                    child: CircleAvatar(
                        radius: 50,
                        backgroundImage: CommentBox.commentImageParser(
                            imageURLorPath: snapshot.data['data']['comments'][i]['image'].toString())),
                  ),
                ),
                title: Text(
                 snapshot.data['data']['comments'][i]['user']['name'].toString(),
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                subtitle: Text(  snapshot.data['data']['comments'][i]['content'].toString(),),
                trailing: Text(  snapshot.data['data']['comments'][i]['created_at'].toString(), style: TextStyle(fontSize: 10)),
              ),
            )
        ],
      );
        }
        else return loading();
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        height: 100,
        child: CommentBox(
          userImage: CommentBox.commentImageParser(
              imageURLorPath: "assets/img/userpic.jpg"),
          child: commentChild(),
          labelText: 'Write a comment...',
          errorText: 'Comment cannot be blank',
          withBorder: false,

          sendButtonMethod: () {
            if (formKey.currentState!.validate()) {
              print(commentController.text);
              setState(() {
                var value = {
                  'name': 'New User',
                  'pic':
                  'https://lh3.googleusercontent.com/a-/AOh14GjRHcaendrf6gU5fPIVd8GIl1OgblrMMvGUoCBj4g=s400',
                  'message': commentController.text,
                  'date': '2021-01-01 12:00:00'
                };

              });
              commentController.clear();
              FocusScope.of(context).unfocus();
            } else {
              print("Not validated");
            }
          },
          formKey: formKey,
          commentController: commentController,
          backgroundColor: Colors.white,
          textColor: Colors.grey,
          sendWidget: Icon(Icons.send_sharp, size: 30, color: Colors.black),
        ),
      ),
    );
  }
}