import 'package:flutter/material.dart';

class addList extends StatefulWidget {
  @override
  State<addList> createState() => _addListState();
}

class _addListState extends State<addList> {
  String dropdownvalue = "Category";

  var items = {
    'Category',
    'Health',
    'Travel',
    'Fashion',
    'Photography',
    'Science',
    'Adventure',
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TrueBlogger"),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        alignment: Alignment.center,
        child: Column(
          children: [
            Container(
              width: 300,
              height: 60,
              alignment: Alignment.centerLeft,
              child: DropdownButton(
                  value: dropdownvalue,
                  icon: const Icon(Icons.keyboard_arrow_down),
                  items: items.map((String items) {
                    return DropdownMenuItem(
                      value: items,
                      child: Text(items),
                    );
                  }).toList(),
                  onChanged: (String? newValue) {
                    setState(() {
                      dropdownvalue = newValue!;
                    });
                  }),
            ),
            Container(
              width: 300,
              height: 60,
              alignment: Alignment.centerLeft,
              child: Container(
                child: Text("Blog Title"),
              ),
            ),
            Container(
              width: 300,
              height: 60,
              alignment: Alignment.centerLeft,
              child: Container(
                width: 200,
                height: 40,
                child: TextField(
                  decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.blue, width: 2.0))),
                ),
              ),
            ),
            Container(
              width: 300,
              height: 40,
              alignment: Alignment.centerLeft,
              child: Container(
                child: Text("Blog Description"),
              ),
            ),
            Container(
              width: 300,
              height: 80,
              alignment: Alignment.centerLeft,
              child: Container(
                width: 200,
                height: 60,
                child: TextField(
                    decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.blue, width: 2.0)),
                )),
              ),
            ),
             Container(
              width: 300,
              height: 50,
              alignment: Alignment.centerLeft,
              child: Container(
                width: 80,
                height: 40,
                color: Colors.blue,
                alignment: Alignment.center,
                child: Text("Submit", style: TextStyle(color: Colors.white),)
              ),
            )
          ],
        ),
      ),
    );
  }
}
