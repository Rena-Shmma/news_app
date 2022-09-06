import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:news_app_youtube/components/breaking_news_card.dart';
import 'package:news_app_youtube/models/news_model.dart';

import '../components/news_list_tile.dart';

class HomeScreenState extends StatefulWidget {
  const HomeScreenState({Key? key}) : super(key: key);

  @override
  State<HomeScreenState> createState() => _HomeScreenStateState();
}

class _HomeScreenStateState extends State<HomeScreenState> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        title: Text(
          'News App',
          style: TextStyle(color: Colors.black,),),
        actions: [
          IconButton(onPressed: (){},
              icon: Icon(Icons.notifications_outlined , color: Colors.black,),
          )],),

      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Breaking News",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 26,
                ),
                 ),
              SizedBox(height: 20,),
              CarouselSlider.builder(
                  itemCount: NewsData.breakingNewsData.length,
                  itemBuilder: (ctx, index , id)=>
                    BreakingNewsCard(NewsData.breakingNewsData[index]),
                  options: CarouselOptions(
                    aspectRatio: 16/9,
                    enableInfiniteScroll: false,
                    enlargeCenterPage: true,

                  )),
             Text("Recent News",style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 26,
              ),),
              SizedBox(height: 20,),
              Column(
                children:
                  NewsData.breakingNewsData.map((e)=> NewsListTile(e)).toList(),
              )
            ],
          ),
        ),
      ),

      bottomNavigationBar: Container(
        margin: EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.black
        ),
        child: BottomNavigationBar(
          elevation: 0.0,
          selectedItemColor: Colors.indigo,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home", backgroundColor: Colors.transparent),
            BottomNavigationBarItem(icon: Icon(Icons.bookmark), label: "Bookmark", backgroundColor: Colors.transparent),
            BottomNavigationBarItem(icon: Icon(Icons.rss_feed), label: "Feed", backgroundColor: Colors.transparent),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile", backgroundColor: Colors.transparent),
          ],
        ),
      ),

    );
  }
}

