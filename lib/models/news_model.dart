class NewsData{
  String? title;
  String? author;
  String? content;
  String? urlToImage;
  String? date;

  NewsData({
    required this.title,
   required this.author,
   required this.content,
    required this.urlToImage,
   required this.date,
});
  static List<NewsData> breakingNewsData = [
    NewsData(
       title: "Teens have abandoned Facebook, Pew study says",
       author: "Amanda Silberling",
        content: "Gen Z internet use is on the rise, but the rate at which teens use Facebook is rapidly declining. A Pew Research Center study on teens, technology and social media found that only 32% of teens aged",
        date:  "2022-08-11",
        urlToImage: "https://techcrunch.com/wp-content/uploads/2022/08/fb-exit-2022.jpg?w=711"),
    NewsData(
        title: "Fox-owned Tubi expands its free streaming service to five Latin American countries",
        author:  "Lauren Forristal",
        content:  "Tubi, the free ad-supported streaming service owned by Fox, is now available in Costa Rica, Ecuador, El Salvador, Guatemala, and Panama — an expansion that has doubled its global footprint and signals the company's interest in capturing more Latin American",
        date: "2022-08-11",
        urlToImage:  "https://techcrunch.com/wp-content/uploads/2022/05/cross-device_wave.png?w=711"),
    NewsData(
        title: "Massive iron batteries could be key to displacing natural gas from the grid",
        author: "Tim De Chant",
        content: "VoltStorage recently raised a Series C worth \$24 million from engine manufacturer Cummins. Its previous rounds included investments from SOSV and EIT InnoEnergy.",
        date: "2022-08-11",
        urlToImage: "https://techcrunch.com/wp-content/uploads/2022/08/electrical-grid-at-night.jpg?w=600"),
    NewsData(
        title: "Mark Cuban, Mavericks in hot water over Voyager \"Ponzi scheme\"",
        author: "Anita Ramaswamy",
        content:"The class-action lawsuit alleges that Cuban's promotion of now-bankrupt crypto firm Voyager cost investors \$5 billion",
        date: "2022-08-11",
        urlToImage:   "https://techcrunch.com/wp-content/uploads/2016/02/54816c7904ab43c9af6a09d12d936b0e.jpg?w=600"),

  ];

}