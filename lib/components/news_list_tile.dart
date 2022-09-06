import 'package:flutter/material.dart';
import 'package:news_app_youtube/models/news_model.dart';

import '../screens/details_screen.dart';

class NewsListTile extends StatefulWidget {
  NewsListTile(this.data, {Key? key}) : super(key: key);
  NewsData data;
  @override
  State<NewsListTile> createState() => _NewsListTileState();
}

class _NewsListTileState extends State<NewsListTile> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.push(
            context,
            MaterialPageRoute(builder: (context)=> DetailsScreen(widget.data),)
        );
      },
      child: Container(
        padding: EdgeInsets.all(12),
        margin: EdgeInsets.only(bottom: 20),
        width: double.infinity,
        height: 130,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: Colors.black,
        ),
        child: Row(
          children: [
            Flexible(
                flex: 3,
                child: Container(
                  height: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    image: DecorationImage(
                      image: NetworkImage(widget.data.urlToImage!),
                      fit: BoxFit.fitHeight
                    )
                  ),
            )),
            SizedBox(width: 10,),
            Flexible(
                flex:5,
                child: Column(
                  children: [
                    Text(widget.data.title!,style:
                      TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                        fontWeight: FontWeight.bold,
                      ),),
                    SizedBox(height: 20,),
                    Text(widget.data.content!,style: TextStyle(
                      color: Colors.white54,
                      fontSize:10 ,
                      overflow: TextOverflow.ellipsis,
                    ),)
                  ],
                ))
          ],
        ),
      ),
    );
  }
}
