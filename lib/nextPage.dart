import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:creo_assignment1/categoriesList.dart';
import 'package:creo_assignment1/newSection.dart';
import 'package:creo_assignment1/categories.dart';
class NextPage extends StatefulWidget {
  const NextPage({
    super.key,
  });

  @override
  State<NextPage> createState() => _NextPageState();
}

class _NextPageState extends State<NextPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: const Icon(
          Icons.menu,
          color: Colors.white,
        ),
        title: const Text(
          'HAMILTON',
          style: TextStyle(color: Colors.white, letterSpacing: 3.0),
        ),
        centerTitle: true,
        actions: [
          TextButton(
            onPressed: () {},
            child: const Text(
              'Sign in',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ],
      ),
      backgroundColor: const Color.fromRGBO(247, 246, 239, 1),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              SizedBox(
                height: 100,
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: Categories.length,
                  itemBuilder: (context, index) {
                    final categori = Categories[index];
                    return Categorydata(
                      title: categori['title'] as String,
                      image: categori['image'] as String,
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.black),
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 20),
                      child: Center(
                        child: Text(
                          'Do you want to receive notifiactions for',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 16),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 1),
                      child: Center(
                        child: Text(
                          'news, lottery and more?',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 16),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 15),
                      child: Center(
                        child: Text(
                          'Enable your notifications permission in',
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 1),
                      child: Center(
                        child: Text(
                          'settings',
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          ElevatedButton(
                            onPressed: () {},
                            child: const Text(
                              'No Thanks',
                              style: TextStyle(color: Colors.white),
                            ),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.black,
                              minimumSize: Size(150, 40),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  side: const BorderSide(color: Colors.white)),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            child: const Text(
                              'Enable',
                              style: TextStyle(color: Colors.black),
                            ),
                            style: ElevatedButton.styleFrom(
                              minimumSize: const Size(150, 40),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              SizedBox(
                height: 500,
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: News.length,
                  itemBuilder: (context, index) {
                    final news = News[index];
                    return ProductCard(
                        news: news['news'] as String,
                        newsimage: news['newsimage'] as String,
                        date: news['date'] as String);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
