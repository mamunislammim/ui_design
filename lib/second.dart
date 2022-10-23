import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  double value1 = 40;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE1E6E6),
      body: ListView(
        children: [
          Stack(
            children: [
              // image stack
              Container(
                height: 165,
                //   width: 250,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(15),
                        bottomLeft: Radius.circular(15)),
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        opacity: .7,
                        image: AssetImage("image/stack.jpg"))),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(
                          Icons.arrow_back_ios,
                          color: Colors.white,
                        )),
                    Text(
                      "Google Course",
                      style: TextStyle(color: Colors.white,fontSize: 18),
                    ),
                    Icon(
                      Icons.more_vert_rounded,
                      color: Colors.white,
                    )
                  ],
                ),
              ),


              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30, top: 45),
                child: Card(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 8,left: 12,right: 12,bottom: 8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Card(
                            color: Colors.pinkAccent,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(25),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 12, right: 12, bottom: 8, top: 8),
                              child: Text("Storage"),
                            )),
                        Text("Calculate"),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 115, left: 10, right: 10),
                child: Card(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            "Storage Free",
                            style: TextStyle(fontSize: 11),
                          ),
                          Text("Data Used 15 GB",
                              style: TextStyle(fontSize: 11)),
                        ],
                      ),
                      Slider(
                        activeColor: Colors.deepPurple,
                        inactiveColor: Colors.green,
                        min: 0,
                        max: 100,
                        value: value1,
                        onChanged: (value) {
                          setState(() {
                            value1 = value;
                          });
                        },
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),



          // List tile
          Padding(
            padding: const EdgeInsets.only(top: 8, left: 10, right: 10),
            child: ListTile(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18)),
              tileColor: Colors.white,
              leading: Image.asset('image/apk.png'),
              title: Text("New Video  Shoot"),
              subtitle: Text("Free Space 15 GB"),
              trailing: Icon(Icons.arrow_forward_ios_sharp),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8, left: 10, right: 10),
            child: ListTile(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18)),
              tileColor: Colors.white,
              leading: Image.asset('image/apk.png'),
              title: Text("New Video  Shoot"),
              subtitle: Text("Free Space 15 GB"),
              trailing: Icon(Icons.arrow_forward_ios_sharp),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8, left: 10, right: 10),
            child: ListTile(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18)),
              tileColor: Colors.white,
              leading: Image.asset('image/apk.png'),
              title: Text("New Video  Shoot"),
              subtitle: Text("Free Space 15 GB"),
              trailing: Icon(Icons.arrow_forward_ios_sharp),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8, left: 10, right: 10),
            child: ListTile(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(18)),
              tileColor: Colors.white,
              leading: Image.asset('image/apk.png'),
              title: Text("New Video  Shoot"),
              subtitle: Text("Free Space 15 GB"),
              trailing: Icon(Icons.arrow_forward_ios_sharp),
            ),
          ),
        ],
      ),
    );
  }
}
