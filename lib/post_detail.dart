import 'package:flutter/material.dart';
import 'package:flutter_http/post_model.dart';

class PostDetail extends StatelessWidget {
  final Post post;

  const PostDetail({
    @required key,
    this.post,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(post.title),
      ),
      body: SingleChildScrollView(
        child: Card(
          child: Column(
            children: <Widget>[
              ListTile(
                title: Text("Title"),
                subtitle: Text(post.title),
              ),
              ListTile(
                title: Text("Id"),
                subtitle: Text("${post.id}"),
              ),
              ListTile(
                title: Text("Body"),
                subtitle: Text(post.body),
              ),
              ListTile(
                title: Text("UserId"),
                subtitle: Text("${post.userId}"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
