import 'package:flutter/material.dart';
import 'package:news_app_youtube/models/news_model.dart';
import 'package:news_app_youtube/screens/details_screen.dart';

class BreakingNewsCard extends StatefulWidget {
   BreakingNewsCard(this.data ,{Key? key}) : super(key: key);
   NewsData data;
  @override
  State<BreakingNewsCard> createState() => _BreakingNewsCardState();
}

class _BreakingNewsCardState extends State<BreakingNewsCard> {
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
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          image: DecorationImage(
            fit: BoxFit.fill,
            image: NetworkImage(widget.data.urlToImage!),
          )
        ),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            gradient: LinearGradient(colors: [
              Colors.transparent, Colors.black,
            ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,

            )
          ),
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(widget.data.title!,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 10,
                  fontWeight: FontWeight.bold,
            ),),
            SizedBox(height: 8,),
              Text(widget.data.author!,
              style: TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 14,
                color: Colors.white54,
              ),),
            ],
          ),
        ),

      ),
    );
  }
}
