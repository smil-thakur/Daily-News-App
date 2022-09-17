import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:news/helper/news.dart';
import 'package:news/model/article_model.dart';
import 'package:news/views/articleview.dart';

class CategoryView extends StatefulWidget {
  const CategoryView({Key? key, required this.category}) : super(key: key);
  final String category;
  @override
  _CategoryViewState createState() => _CategoryViewState();
}

class _CategoryViewState extends State<CategoryView> {
  List<ArticleModel> articles = [];
  bool loading = true;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getCategoryNews();
  }

  getCategoryNews() async {
    CategoryNews news = CategoryNews();
    await news.getNews(widget.category);
    articles = news.news;
    setState(() {
      loading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Row(
          children: [
            Text(
              "Daily",
              style: GoogleFonts.openSans(
                  fontSize: 30, fontWeight: FontWeight.bold),
            ),
            Text("News",
                style: GoogleFonts.openSans(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue)),
          ],
        ),
      ),
      body: loading
          ? Container(
              child: Center(
                child: const CircularProgressIndicator(),
              ),
            )
          : Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                margin: EdgeInsets.only(top: 10),
                child: ListView.builder(
                    shrinkWrap: true,
                    physics: const ClampingScrollPhysics(),
                    itemCount: articles.length,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Feeds(
                          imageUrl: articles[index].imageUrl,
                          title: articles[index].title,
                          desc: articles[index].description,
                          url: articles[index].url,
                        ),
                      );
                    }),
              ),
            ),
    );
  }
}

class Feeds extends StatelessWidget {
  const Feeds(
      {Key? key,
      required this.imageUrl,
      required this.title,
      required this.desc,
      required this.url})
      : super(key: key);
  final String imageUrl, title, desc, url;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => ArticleView(articleUrl: url)));
      },
      child: Container(
        decoration: BoxDecoration(
            border: Border.all(color: Colors.white, width: 2),
            borderRadius: BorderRadius.circular(15)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              ClipRRect(
                  borderRadius: BorderRadius.circular(15),
                  child: Image.network(imageUrl)),
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Text(
                  title,
                  style: GoogleFonts.roboto(
                      fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
              Divider(
                color: Colors.white,
              ),
              Text(desc),
            ],
          ),
        ),
      ),
    );
  }
}
