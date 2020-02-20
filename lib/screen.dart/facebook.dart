import 'package:flutter/material.dart';

class Facebook extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          "Facebook",
          style: TextStyle(color: Color(0XFF217CEF)),
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
                backgroundColor: Colors.grey.withOpacity(0.2),
                child: IconButton(
                    color: Colors.black,
                    icon: Icon(Icons.search),
                    onPressed: () {})),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(
                backgroundColor: Colors.grey.withOpacity(0.2),
                child: IconButton(
                    color: Colors.black,
                    icon: Icon(Icons.message),
                    onPressed: () {})),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: 100,
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  CircleAvatar(
                    backgroundImage: AssetImage("images/bg_1.jpg"),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 25, top: 12),
                    child: Text("Que voulez vous dire"),
                    height: 40,
                    width: MediaQuery.of(context).size.width / 1.3,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(100),
                        border: Border.all(color: Colors.grey, width: 1)),
                  ),
                ],
              ),
            ),
          Container(
              height: MediaQuery.of(context).size.height / 3.5,
            width: MediaQuery.of(context).size.width,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: 10,
              itemBuilder: (context,i){
                return cont(context);
              },
            ),
          ),
         
          ],
        ),
      ),
    );
  }

  Widget cont(BuildContext context){
    return   Container(
              margin: EdgeInsets.only(right:20 ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Container(
                        padding: EdgeInsets.all(1),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.black,
                            border:
                                Border.all(width: 2, color: Color(0XFF217CEF))),
                        height: 50,
                        width: 50,
                        child: CircleAvatar(
                          backgroundImage: AssetImage("images/footAm.jpg"),
                        )),
                    Container(
                      width: 80,
                      child: Text("Flore Domi",style: TextStyle(color: Colors.white),),
                    ),
                  ],
                ),
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.red,
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(
                        "images/bg_1.jpg",
                      ))),
              height: MediaQuery.of(context).size.height / 3.5,
              width: 120,
            );
  }
}
