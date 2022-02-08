import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const MyHomePage(title: ''),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  bool switched1 = true;
  bool switched2 = false;
  bool switched3 = false;

  @override
  Widget build (BuildContext context){
    return MaterialApp(
      title: 'App Design',
      theme: ThemeData(
        colorScheme: Theme.of(context).colorScheme.copyWith(
          primary: Colors.white
        )),
        home: Scaffold(
        backgroundColor: Color(0xffE1FCD2),
        appBar: AppBar(
          toolbarHeight: 20,
          backgroundColor: Color(0xffDCEDC8),
          elevation: 0,
          automaticallyImplyLeading: false,
          actions: [
            IconButton(icon: Icon(Icons.arrow_back, color: Colors.white,),
              onPressed: (){
              },
            ),
          ],
        ),
        body: Container(
          // padding: EdgeInsets.only(left: 15, top: 10, right: 15),
          child: GestureDetector(
            onTap: (){
            },
            child: ListView(
              children:[
                Center(
                  child: Stack(
                    children:[
                      Container(
                        width: 130,
                        height: 130,
                        decoration: BoxDecoration(
                          border: Border.all(width: 4, color: Colors.white),
                          boxShadow: [
                            BoxShadow(
                              spreadRadius: 2,
                              blurRadius: 10,
                              color: Colors.black.withOpacity(0.1),
                            ),
                          ],
                          shape: BoxShape.circle,
                          image: const DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(
                              'https://upload.wikimedia.org/wikipedia/commons/4/4a/Roberto_Carlos_in_Moscow.jpg'
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: Container(
                          height: 35,
                          width: 25,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              width: 4,
                              color: Colors.white
                            ),
                            color:Colors.green.shade300
                          ),
                        ),
                      ),
                    ]
                  ),
                ),
                SizedBox(height: 20,),
                Center(child: Text('Roberto Carlos', style: TextStyle(fontWeight: FontWeight.bold, 
            color: Colors.black.withOpacity(1.0))),),
                Center(child: Text('robertocarlos_official.ig', style: TextStyle( 
            color: Colors.grey)),),
                SizedBox(height: 25,),
                Center(child: 
                MaterialButton(
                    child: Text('Edit Profile', style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color: 
                      Colors.black,)),
                    height: 40.0,
                    color: Color(0xFFDCEEC8),
                    shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                    onPressed: () {
                    },
                  ),
                ),
                SizedBox(height: 30,),
                SizedBox(height: 10,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      color: Color(0xFFF5F5F5)
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 15, right: 15, top: 10, bottom: 10),
                  color: Colors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "CONTENT", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color: 
                        Colors.grey,),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      color: Color(0xFFF5F5F5)
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 15, right: 15),
                  color: Colors.white,
                  child: Column(
                    children: [
                      buildContentProfile(context, Icons.favorite_border, "Produk Favorit"),
                      buildContentProfile(context, Icons.stars, "Brand Favorit"),
                      buildContentProfile(context, Icons.reviews, "Review Produk"),
                      buildContentProfile(context, Icons.quiz, "Produk Request"),
                    ],
                  ),
                ),
                SizedBox(height: 10,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      color: Color(0xFFF5F5F5)
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 15, right: 15, top: 10, bottom: 10),
                  color: Colors.white,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "PREFERENCE", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color: 
                        Colors.grey,),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10,
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      color: Color(0xFFF5F5F5)
                    ),
                  ),
                ),
                
                Container(
                  padding: EdgeInsets.only(left: 15, right: 15),
                  color: Colors.white,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 12.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Wrap(
                              crossAxisAlignment: WrapCrossAlignment.center,
                              children: [
                                Icon(Icons.language, color: Color(0xFFA96722)),
                                Text("\t\tLanguage", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color: 
                              Colors.black,),
                                ),
                              ],
                            ),
                            Wrap(
                              crossAxisAlignment: WrapCrossAlignment.center,
                              children: [
                                Text("English\t\t", style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color: 
                              Colors.grey,),
                                ),
                                Icon(Icons.arrow_forward_ios, color:Colors.grey),
                              ],
                            ),   
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 12.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Wrap(
                            crossAxisAlignment: WrapCrossAlignment.center,
                            children: [
                              Icon(Icons.dark_mode, color: Color(0xFFA96722)),
                              Text("\t\tDark Mode" ,style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color: 
                                Colors.black,),
                              ),
                            ],
                            ),
                            CupertinoSwitch(value: switched1, onChanged: (value){
                              switched1 = value;
                              setState(() {
                                
                              });
                            },),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 12.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Wrap(
                            crossAxisAlignment: WrapCrossAlignment.center,
                            children: [
                              Icon(Icons.wifi, color: Color(0xFFA96722)),
                              Text("\t\tOnly Download via Wi-Fi" ,style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color: 
                                Colors.black,),
                              ),
                            ],
                            ),
                            CupertinoSwitch(value: switched2, onChanged: (value){
                              switched2 = value;
                              setState(() {
                                
                              });
                            },),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(vertical: 12.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Wrap(
                            crossAxisAlignment: WrapCrossAlignment.center,
                            children: [
                              Icon(Icons.play_circle_fill, color: Color(0xFFA96722)),
                              Text("\t\tPlay in Background" ,style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color: 
                                Colors.black,),
                              ),
                            ],
                            ),
                            CupertinoSwitch(value: switched3, onChanged: (value){
                              switched3 = value;
                              setState(() {
                                
                              });
                            },),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            )
          ),
        ),
      ));
  }

  GestureDetector buildContentProfile(BuildContext context, IconData icon, String title){
    return GestureDetector(
      onTap: (){

      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Wrap(
            crossAxisAlignment: WrapCrossAlignment.center,
            children: [
              Icon(icon, color: Color(0xFFA96722)),
              Text("\t\t" + title, style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500, color: 
                Colors.black,),
              ),
            ],
            ),
            Icon(Icons.arrow_forward_ios, color:Colors.grey),
          ],
        ),
      ),
    );
  }

}
