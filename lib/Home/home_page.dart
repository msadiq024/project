import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tea_cafe/CustomWidgets/custom_scaffold.dart';

import 'package:tea_cafe/CustomWidgets/circular_button.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;

    var screenWidth = MediaQuery.of(context).size.width;
    return CustomScaffold(
      index: 0,
      title: 'Tea & Cafe',
      body: Container(



        height: screenHeight,
        width: screenWidth,
        child: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment:  MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text("Dishes",
                            style: new TextStyle(
                              fontSize: 25.0,
                              fontWeight: FontWeight.bold

                            ),
                          ),
                          Text("View More",
                          style: new TextStyle(
                            fontSize: 15.0,
                            color: Colors.red,
                          ),
                          ),
                        ],
                      ),
                    ),
                    BannerWidgetArea(),
          // scroll waly kay bad ka kaam hy yahan pay
          Padding(
              padding: const EdgeInsets.only(top: 48, bottom: 2,),),
                    Container(

                      child:Align(
                        child: Text("Food Categories",
                          style: new TextStyle(
                            fontSize: 25,
                            fontWeight: FontWeight.bold,
                          ),

                        ),
                        alignment: Alignment.bottomLeft,
                      ),

                    ),
                    // again app bar wala kaam
                    Container(
                      child: SafeArea(
                        //child: SingleChildScrollView(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.only(top:58, left: 8,right: 8,bottom: 8),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Text("Popular Items",
                                    style: new TextStyle(
                                      fontSize: 25.0,
                                      fontWeight: FontWeight.bold
                                    ),
                                    ),
                                    Text("View More",
                                    style: new TextStyle(
                                      fontSize: 15.0,
                                      color: Colors.red,
                                    ),
                                    ),
                                  ],
                                ),
                              ),

                            ],
                          ),
                        ),
                      ),
                    BannerWidgetArea1(),

                   // ),



                  ]
              ),
            ),

        ),

      ),

    );

  }

}
//var bannerItems = ["Burger ", "pizza", "Chilli", "noodles"];
//var bannerImage = ["assets/food13.jpeg","assets/food14.jpg","assets/food15.jpg","assets/food16.jpg"];

class BannerWidgetArea extends StatelessWidget{
  final List<Map> items = [
    {"img": "assets/food13.jpeg", "name": "Burger"},
    {"img": "assets/food14.jpg", "name": "pizza"},
    {"img": "assets/food15.jpg", "name": "Hamburger"},
    {"img": "assets/food16.jpg", "name": "Fruit Salad"},
    {"img": "assets/food4.jpeg", "name": "Fruit Salad"},
    {"img": "assets/food5.jpeg", "name": "Hamburger"},
    {"img": "assets/food6.jpeg", "name": "Steak"},
    {"img": "assets/food7.jpeg", "name": "Pizza"},
    {"img": "assets/food8.jpeg", "name": "Asparagus"},
    {"img": "assets/food13.jpeg", "name": "Chicken Role"},
    {"img": "assets/food14.jpg", "name": "Vegetables"},
    {"img": "assets/food15.jpg", "name": "Macroni"},
    {"img": "assets/food16.jpg", "name": "Fried Rice "},
  ];

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;

    PageController controller = PageController(viewportFraction: 1.0, initialPage: 1);



    // ya inchay waly kay liya hay


    // ya upper waly kay liya hy
    List<Widget> banner = List();
    List<Widget> getRatingRow() {
      List<Widget> row = List();
      for (int i = 0; i < 5; i++) {
        row.add(Icon(
          Icons.star,
          color: Colors.orangeAccent,
          size: 11,
        ));}

        row.add(Container(
          width: 8,
        ));
       row.add(

          Text(
            '5.0 (23 Reviews)',
            style: new TextStyle(
              fontSize: 11,
              color: Colors.black

            ),

          ),


        );
        return row;

      }

      items.forEach((item) {
        // var record ;
        banner.add(
          InkWell(
              onTap: () {},
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Stack(
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20.0),
                        child: Image.asset(
                          item['img'],
                          height: MediaQuery.of(context).size.height / 3.8,
                          width: MediaQuery.of(context).size.width / 1.1,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Positioned(
                          height: 30,
                          width: 30,
                          right: 8.0,
                          bottom: 8.0,
                          child: CircularButton(
                            icon: Icon(
                              Icons.favorite,
                              color: Colors.red,
                              size: 15,
                            ),
                            onPressed:  () {},
                          )

                      ),
                    ],

                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 8, bottom: 2, right: 250),
                    child: Text(
                      item['name'],
                      style: new TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w900,
                          color: Colors.amber),
                    ),
                  ),
                  Row(
                    children: getRatingRow(),
                  ),
                ],
              )),
        );
      });



//ya image may shodow ka kaam hy
   // for(int x= 0 ; x <items.length;x++) {
     // var bannerView = Padding(padding: EdgeInsets.all(10.0),
      //  child: Container(
        //  child: Stack(
          //  fit: StackFit.expand,
         //   children: <Widget>[
              //Container(
                //decoration: BoxDecoration(
                  //  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                    //boxShadow: [
                      //BoxShadow(
                        //color: Colors.black,
                        //offset: Offset(4.0,4.0),
                        //blurRadius: 5.0,
                        //spreadRadius: 1.0,
                      //)
                    //]
                //),
              //),
            //  ClipRRect(
              //  borderRadius: BorderRadius.all(Radius.circular(20.0)),
                //child: Image.asset(
                  //item['img'],
                  //fit: BoxFit.cover,
                //),
              //),
              //Container(
                //decoration: BoxDecoration(
                  //borderRadius: BorderRadius.all(Radius.circular(20.0)),
                  //gradient: LinearGradient(
                    //  begin: Alignment.topCenter,
                      //end: Alignment.bottomCenter,
                      //colors: [Colors.transparent,Colors.black]
                  //),
                //),
              //),

         //   ],
      //    ),
        //),
     // );




      //banner.add(bannerView);
  //  }

    return Container(
      width: screenWidth,
      height: screenWidth*11/16,
      child: PageView(
        controller: controller,
        scrollDirection: Axis.horizontal,
        children: banner,
      ),
    );
  }
}
     ////// ya dosri class ka kaam hy q kay nicahy grid lagana hy
     // class grid ke waja sa bani hy
class BannerWidgetArea1 extends StatelessWidget{
  final List<Map> items1 = [
    {"img": "assets/food13.jpeg", "name": "Burger"},
    {"img": "assets/food14.jpg", "name": "pizza"},
    {"img": "assets/food15.jpg", "name": "Hamburger"},
    {"img": "assets/food16.jpg", "name": "Fruit Salad"},
    {"img": "assets/food4.jpeg", "name": "Fruit Salad"},
    {"img": "assets/food5.jpeg", "name": "Hamburger"},
    {"img": "assets/food6.jpeg", "name": "Steak"},
    {"img": "assets/food7.jpeg", "name": "Pizza"},
    {"img": "assets/food8.jpeg", "name": "Asparagus"},
    {"img": "assets/food9.jpeg", "name": "Salad"},
    {"img": "assets/food13.jpeg", "name": "Chicken Role"},
    {"img": "assets/food14.jpg", "name": "Vegetables"},
    {"img": "assets/food15.jpg", "name": "Macroni"},
    {"img": "assets/food16.jpg", "name": "Fried Rice "},
  ];

  @override
  Widget build(BuildContext context) {

    List<Widget> banner1 = List();
    List<Widget> getRatingRow1() {
      List<Widget> row1 = List();
      for (int j = 0; j < 5; j++) {
        row1.add(Icon(
          Icons.star,
          color: Colors.red,
          size: 11,
        ));
      }
      row1.add(Container(
        width: 8,
      ));
      row1.add(
        Text(
          '5.0 (23 Reviews)',
          style: new TextStyle(
              fontSize: 11,
              color: Colors.black
          ),
        ),
      );
      return row1;
    }
    items1.forEach((item1) {

      banner1.add(
        InkWell(
            onTap: () {},
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                      child: Image.asset(
                        item1['img'],
                        height: MediaQuery.of(context).size.height / 3.6,
                        width: MediaQuery.of(context).size.width / 2.2,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Positioned(
                        height: 30,
                        width: 30,
                        right: 8.0,
                        bottom: 8.0,
                        child: CircularButton(
                          icon: Icon(
                            Icons.favorite,
                            color: Colors.red,
                            size: 15,
                          ),
                          onPressed: () {},
                        )

                    ),
                  ],

                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8, bottom: 2),
                  child: Text(
                    item1['name'],
                    style: new TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w900,
                        color: Colors.amber),
                  ),
                ),
                Row(
                  children: getRatingRow1(),
                ),
              ],
            )),
      );
    });


    return
    GridView.count(
      shrinkWrap: true,
      primary: false,
      padding: const EdgeInsets.all(8),
      crossAxisSpacing: 8,
      childAspectRatio: MediaQuery.of(context).size.width /
          (MediaQuery.of(context).size.height / 1.25),
      mainAxisSpacing: 8,
      crossAxisCount: 2,
      children: banner1,
    );
  }

}
