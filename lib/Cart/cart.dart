import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:tea_cafe/CustomWidgets/custom_scaffold.dart';

class Cart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScaffold(
      index: 2,
      title: 'Restaurant App UI Kit',
      body: new ListView(
        children: <Widget>[
          new ListTo(gamber: "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQe5NwGWhv_f80F4Epoz7Oe_v8xhqBAweN9Lz0L6jrU_Zk815Ec",judul: "Burger",),
          new ListTo(gamber: "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcT8IzuA5tQh69Cpu_wegwpoJYMSQytHIdlvefEacJFciwWXaNIA",judul: "Mayo Burger",),
          new ListTo(gamber: "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcT4M34IQoXUCvDk_u8WRJx98mieBsQVZ8rrdTfnx1ryznHgPy7j",judul: " Salad ",),
          new ListTo(gamber: "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcT8IzuA5tQh69Cpu_wegwpoJYMSQytHIdlvefEacJFciwWXaNIA",judul: "Mayo Burger",),
          new ListTo(gamber: "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQe5NwGWhv_f80F4Epoz7Oe_v8xhqBAweN9Lz0L6jrU_Zk815Ec",judul: "Burger",),
          new ListTo(gamber: "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcQCXu_2Yx2Jnt5i5NM1eWJmjxP4vXnFTa6xwoQ9I4LFY9HpU7uy",judul: "Mayo Burger",),
         new ListTo(gamber: "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTyDKo4L1jI4L_xLf4mLtrZrdGGmRWFuDH94uygqwuNC8Kyvc_p",judul: "Pan Pizza",),
          new ListTo(gamber: "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcT4M34IQoXUCvDk_u8WRJx98mieBsQVZ8rrdTfnx1ryznHgPy7j",judul: " Salad ",),
          new ListTo(gamber: "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcT8IzuA5tQh69Cpu_wegwpoJYMSQytHIdlvefEacJFciwWXaNIA",judul: "Mayo Burger",),
          new ListTo(gamber: "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTyDKo4L1jI4L_xLf4mLtrZrdGGmRWFuDH94uygqwuNC8Kyvc_p",judul: "Pan Pizza",)
        ],
      ),

    );


  }
}
class ListTo extends StatelessWidget {

  ListTo ({this.gamber,this.judul});
  final String gamber;
  final String judul;
  @override
  Widget build(BuildContext context) {

    int amount = 90;
    return new Container(
      padding: new EdgeInsets.only(top:0.0, bottom: 4.0,right: 10.0,left: 10.0),
      child: new Row(
        children: <Widget>[
          ClipRRect( borderRadius: BorderRadius.circular(20.0),
            child:
            new Image(
              image: new NetworkImage(
                gamber,
              ),
              width: 110.0,
              height: 90.0,
            )
            ,
          ),


          Padding(
            padding: EdgeInsets.all(14.0),
          ),
          new Container(
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.start,

              children: <Widget>[
                new Text(judul,
                style: new TextStyle(
                    fontSize: 20.0,
                fontWeight: FontWeight.bold),
                ),
                new Icon(Icons.star,
                color: Colors.orangeAccent,
                  size: 11,
                ),
                new Text(" 5.0 (23 Reviews)" ,style: new TextStyle(fontSize: 12.0),),
                new Text("20 pices: \$$amount",style: new TextStyle(fontSize: 12.0),),
                new Text("Quantity: 1", style: new TextStyle(fontSize: 12.0),),

              ],

            ),
          )
        ],
      ),
    );
  }

}


//flotingActionButton: FloatingActionButton(onPressed: (){},
//backgroundColor: Colors.black,
//child: Icon(MdiIcons.food,color: Colors.white,),),

