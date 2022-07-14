import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class homePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TrueBlogger"),
      ),
      body: Stack(fit: StackFit.expand, children: [
          Image.network(
              "https://images.pexels.com/photos/130576/pexels-photo-130576.jpeg?auto=compress&cs=tinysrgb&w=600",
              fit: BoxFit.cover,
              color: Colors.black.withOpacity(0.7),
              colorBlendMode: BlendMode.darken),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 80,
                height: 50,
                alignment: Alignment.centerLeft,
                child: Text(
                  "NavBar",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Container(
                width: 50,
                height: 50,
                alignment: Alignment.center,
                child: Text(
                  "Home",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              GestureDetector(
                 onTap: () {
                      Navigator.pushNamed(context, "/healthList");
                    },
                child: Container(
                  width: 50,
                  height: 50,
                  alignment: Alignment.center,
                  child: Text(
                    "Link",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
              Container(
                width: 180,
                height: 50,
                alignment: Alignment.centerRight,
                child: SizedBox(
                  width: 100,
                  height: 40,
                  child: TextField(
                    style: TextStyle(color: Colors.white, fontSize: 20),
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide:
                              BorderSide(color: Colors.white, width: 1.0)),
                    ),
                  ),
                ),
              ),
              Container(
                width: 51,
                height: 50,
                alignment: Alignment.center,
                child: Text(
                  "Search",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 80,
                height: 300,
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.all(4),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, "/addList");
                    },
                    child: Container(
                      width: 100,
                      height: 50,
                      alignment: Alignment.center,
                      decoration: boxDecoration(),
                      child: Text(
                        "Create",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                width: 80,
                height: 300,
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.all(4),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, "/healthList");
                    },
                    child: Container(
                      width: 100,
                      height: 50,
                      alignment: Alignment.center,
                      decoration: boxDecoration(),
                      child: Text(
                        "Explore",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: 100,
                height: 250,
                alignment: Alignment.bottomCenter,
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, "/healthList");
                  },
                  child: Container(
                    width: 80,
                    height: 30,
                    decoration: boxDecoration(),
                    alignment: Alignment.center,
                    child: Text(
                      "Health",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
              Container(
                width: 100,
                height: 40,
                alignment: Alignment.bottomCenter,
                child: GestureDetector(
                  onTap: () {
                    setData();
                    Navigator.pushNamed(context, "/travelList");
                  },
                  child: Container(
                    width: 80,
                    height: 30,
                    decoration: boxDecoration(),
                    alignment: Alignment.center,
                    child: Text(
                      "Travel",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
              Container(
                width: 100,
                height: 40,
                alignment: Alignment.bottomCenter,
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, "/fashionList");
                  },
                  child: Container(
                    width: 80,
                    height: 30,
                    decoration: boxDecoration(),
                    alignment: Alignment.center,
                    child: Text(
                      "Fashion",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
              Container(
                width: 100,
                height: 40,
                alignment: Alignment.bottomCenter,
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, "/photographyList");
                  },
                  child: Container(
                    width: 100,
                    height: 30,
                    decoration: boxDecoration(),
                    alignment: Alignment.center,
                    child: Text(
                      "Photography",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
              Container(
                width: 100,
                height: 40,
                alignment: Alignment.bottomCenter,
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, "/scienceList");
                  },
                  child: Container(
                    width: 80,
                    height: 30,
                    decoration: boxDecoration(),
                    alignment: Alignment.center,
                    child: Text(
                      "Science",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ),
              Container(
                width: 100,
                height: 40,
                alignment: Alignment.bottomCenter,
                child: GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, "/adventureList");
                  },
                  child: Container(
                    width: 80,
                    height: 30,
                    decoration: boxDecoration(),
                    alignment: Alignment.center,
                    child: Text(
                      "Adventure",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              )
            ],
          )
        ]),
    );
  }
}

Future<void> setData() async {
  SharedPreferences prefs= await SharedPreferences.getInstance();
  prefs.setString("category", "travel");
}

BoxDecoration boxDecoration() {
  return BoxDecoration(
    border: Border.all(color: Colors.white),
  );
}