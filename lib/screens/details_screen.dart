import 'package:flutter/material.dart';
import 'package:news_app_youtube/models/news_model.dart';

class DetailsScreen extends StatefulWidget {
  DetailsScreen(this.data,{Key? key}) : super(key: key);
  NewsData data;

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.orange),
      ),
      body: Padding(
        padding: EdgeInsets.all(18),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(widget.data.title!,
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 20,
            ),),
            SizedBox(height: 8,),
            Text(widget.data.author!,
              style: TextStyle(
                color: Colors.blue,
                fontSize: 10,
              ),),
            SizedBox(height: 20,),
            Hero(
              tag: "${widget.data.title!}",
              child: ClipRRect(
               borderRadius: BorderRadius.circular(16),
               child: Image.network(widget.data.urlToImage!),
              ),
            ),
            SizedBox(height: 30,),
            Text(widget.data.content!),

          ],
        ),
      ),
    );
  }
}
