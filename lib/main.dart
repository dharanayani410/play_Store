import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    routes: {'/': (context) => const MyApp()},
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 4, vsync: this);
    return SafeArea(
        child: Scaffold(
      body: Container(
        color: Colors.white,
      ),
      appBar: AppBar(
        title: Container(
          alignment: Alignment.center,
          height: 50,
          decoration: BoxDecoration(boxShadow: [
            BoxShadow(
              blurRadius: 5,
              spreadRadius: 0,
              offset: Offset(-0, -1),
            )
          ], color: Colors.white, borderRadius: BorderRadius.circular(5)),
          padding: EdgeInsets.all(5),
          child: const TextField(
            cursorColor: Colors.black,
            decoration: InputDecoration(
              border: OutlineInputBorder(borderSide: BorderSide.none),
              prefixIcon: Icon(Icons.dehaze_rounded),
              prefixIconColor: Colors.black,
              hintText: "Search for apps & games",
              suffixIcon: Icon(Icons.mic),
              suffixIconColor: Colors.black,
            ),
          ),
        ),
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 10,
        bottom: TabBar(
            controller: tabController,
            isScrollable: true,
            indicatorColor: Colors.green,
            indicatorPadding: EdgeInsets.symmetric(horizontal: 15),
            tabs: const [
              Tab(
                child: Text(
                  "For You",
                  style: TextStyle(color: Colors.black),
                ),
              ),
              Tab(
                child: Text(
                  "Top Charts",
                  style: TextStyle(color: Colors.black),
                ),
              ),
              Tab(
                child: Text(
                  "Categories",
                  style: TextStyle(color: Colors.black),
                ),
              ),
              Tab(
                child: Text(
                  "Editor's Choice",
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ]),
      ),
    ));
  }
}
