import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:notification_widget/second.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:  ExampleApp(),
    );
  }
}

class ExampleApp extends StatefulWidget {
  const ExampleApp({Key? key}) : super(key: key);

  @override
  State<ExampleApp> createState() => _ExampleAppState();
}

class _ExampleAppState extends State<ExampleApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: InkWell(
          onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> SecondPage()));
          },
          child: Icon(Icons.arrow_forward,color: Colors.blue,)),
      backgroundColor: Color(0xffE1E6E6),
      appBar: AppBar(
        elevation: 0,
        leading: Icon(Icons.add_box_outlined),
        actions: [
          Icon(Icons.search),
          SizedBox(
            width: 10,
          )
        ],
        backgroundColor: Color(0xffE1E6E6),
        iconTheme: IconThemeData(
          color: Colors.grey,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 8,right: 8),
        child: ListView(
           children: [
            Text(
              "  Hii Mamun",
              style: TextStyle(color: Colors.black, fontSize: 15),
            ),
            Text(
              "  Manage Your Profile",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 17),
            ),
            SizedBox(
              height: 12,
            ),

            // Image for Discount
            Card(
              shadowColor: Colors.deepPurple,
              elevation: 40,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18),
              ),
              child: Container(
                height: 130,
                width: double.infinity,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18),
                    image: DecorationImage(
                        fit: BoxFit.fill,
                        image: AssetImage('image/Pink.jpg'))),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            
            
            // picture  video  files
            Padding(
              padding: const EdgeInsets.only(left: 15,right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [

                  // Picture
                  Container(
                    padding:  EdgeInsets.only(left: 10,right: 10,top: 5),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8)),
                    child: Column(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(18),
                              image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage('image/Img.png'))),
                        ),
                        Text(
                          "Picture",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "New Folder",
                          style: TextStyle(fontSize: 8),
                        ),
                        SizedBox(
                          height: 5,
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  
                  // video
                  Container(
                    padding:  EdgeInsets.only(left: 10,right: 10,top: 5),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8)),
                    child: Column(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(18),
                              image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage('image/files.png'))),
                        ),
                        Text(
                          "Video",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "New Folder",
                          style: TextStyle(fontSize: 8),
                        ),
                        SizedBox(
                          height: 5,
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  
                  // files
                  Container(
                    padding:  EdgeInsets.only(left: 10,right: 10,top: 5),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8)),
                    child: Column(
                      children: [
                        Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(18),
                              image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage('image/filess.png'))),
                        ),
                        Text(
                          "Files",
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "New Folder",
                          style: TextStyle(fontSize: 8),
                        ),
                        SizedBox(
                          height: 5,
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            
            // Recent files  &&  view all
            Padding(
              padding: const EdgeInsets.only(left: 15,right: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Recent Files",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Text("View All"),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            
            // List tile 1
            ListTile(
              tileColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15)
              ),
              leading: Image.asset('image/list2.jpeg'),
              title: Text(
                "Google UK",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                "All important files here",
                style: TextStyle(fontSize: 11),
              ),
              trailing: Icon(Icons.more_vert_rounded),
            ),
            SizedBox(
              height: 20,
            ),
            
            // ListTile 2
            ListTile(
              tileColor: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15)
              ),
              leading: Image.asset('image/list.jpeg'),
              title: Text(
                "Google UK",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              subtitle: Text(
                "All important files here",
                style: TextStyle(fontSize: 11),
              ),
              trailing: Icon(Icons.more_vert_rounded),
            ),
          ],
        ),
      ),
    );
  }
}
