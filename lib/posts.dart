import 'package:flutter/material.dart';
import 'package:flutter_http/http_service.dart';
import 'package:flutter_http/post_detail.dart';
import 'package:flutter_http/post_model.dart';
import 'dart:convert';

class PostPage extends StatelessWidget {
  final HttpService httpService = HttpService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("posts"),
      ),
      body: FutureBuilder(
        future: httpService.getPosts(),
        builder: (BuildContext context, AsyncSnapshot<List<Post>> snapshot) {
          if (snapshot.hasData) {
            List<Post> posts = snapshot.data;
            return ListView(
              children: posts
                  .map(
                    (Post post) => ListTile(
                      title: Text(post.title),
                      subtitle: Text(post.id.toString()),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => PostPage()),
                        );
                      },
                    ),
                  )
                  .toList(),
            );
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}
