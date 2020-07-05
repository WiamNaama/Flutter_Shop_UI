import 'package:flutter/material.dart';
import 'package:flutter_shope/shoselist.dart';

class Details extends StatefulWidget {
  Details({Key key}) : super(key: key);

  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> with SingleTickerProviderStateMixin {
  TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 5, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                height: 250,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/7.jpg'),
                        fit: BoxFit.cover)),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: IconButton(
                    icon: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                    ),
                    onPressed: () {
                      Navigator.of(context).pop();
                    }),
              ),
              Align(
                alignment: Alignment.topRight,
                child: FloatingActionButton(
                    child: Center(
                      child: Icon(
                        Icons.shopping_basket,
                        color: Colors.black,
                      ),
                    ),
                    mini: true,
                    elevation: 0.0,
                    backgroundColor: Colors.white,
                    onPressed: () {}),
              ),
            ],
          ),
          SizedBox(
            height: 5.0,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Text(
              'Saw an outfit you loved and was able to recreate it from what is in your closet. That s a story!',
              style: TextStyle(
                  fontFamily: 'Quicksand',
                  fontSize: 20.0,
                  color: Colors.black,
                  fontWeight: FontWeight.w300),
            ),
          ),
          SizedBox(
            height: 5.0,
          ),
          Container(
              height: 100.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        image: DecorationImage(
                            image: AssetImage('assets/images/8.jpg'))),
                    height: 100.0,
                    width: 100.0,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        image: DecorationImage(
                            image: AssetImage('assets/images/7.jpg'))),
                    height: 100.0,
                    width: 100.0,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        image: DecorationImage(
                            image: AssetImage('assets/images/9.jpg'))),
                    height: 100.0,
                    width: 100.0,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        image: DecorationImage(
                            image: AssetImage('assets/images/9.jpg'))),
                    height: 100.0,
                    width: 100.0,
                  ),
                ],
              )),
          Padding(
            padding: EdgeInsets.only(top: 20.0),
            child: TabBar(
              controller: tabController,
              indicatorColor: Colors.transparent,
              labelColor: Colors.black,
              unselectedLabelColor: Colors.grey.withOpacity(0.6),
              isScrollable: true,
              tabs: <Widget>[
                Tab(
                  child: Text(
                    ' Jacket',
                    style: TextStyle(
                        fontFamily: 'Quicksand',
                        fontSize: 10.0,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Tab(
                  child: Text(
                    ' Jacket',
                    style: TextStyle(
                        fontFamily: 'Quicksand',
                        fontSize: 10.0,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Tab(
                  child: Text(
                    ' Jacket',
                    style: TextStyle(
                        fontFamily: 'Quicksand',
                        fontSize: 10.0,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Tab(
                  child: Text(
                    ' Jacket',
                    style: TextStyle(
                        fontFamily: 'Quicksand',
                        fontSize: 10.0,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Tab(
                  child: Text(
                    ' Jacket',
                    style: TextStyle(
                        fontFamily: 'Quicksand',
                        fontSize: 10.0,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height - 350,
            child: TabBarView(controller: tabController, children: <Widget>[
              ShoseList(),
              ShoseList(),
              ShoseList(),
              ShoseList(),
              ShoseList()
            ]),
          )
        ],
      ),
    );
  }
}
