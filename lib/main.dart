import 'package:flutter/material.dart';
import 'package:resitance_calculator/resistance.dart';
var r1color=Colors.white;
var r2color=Colors.white;
var r3color=Colors.white;
var a;
var b;
var c=0;
var d;
var res ="";
var third_band;
String? number(var d,var k){

  String resul ='0' * (d);
  String s = k.toString();
  String temp = (s+resul);
  print(resul);
  return temp;

}

var map={
  'black':0,
  'brown':1,
  'red': 2,
  'orange':3,
  'yello':4,
  'green':5,
  'blue':6,
  'vilet':7,
  'grey':8,
  'white':9

};

var result="Enter color of first band: ";

var bgcolor = Colors.deepPurple.shade50;
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Center(child: Text("Resistance Calculator",style: TextStyle(fontSize: 30,fontWeight: FontWeight.w600))),
      ),
      body:body(),
    );
  }
}
class body extends StatefulWidget{
  @override
  State<body> createState() => _bodyState();
}

class _bodyState extends State<body> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: bgcolor,
      child: Center(
          child: Padding(
            padding: const EdgeInsets.only(left: 30.0,right: 30.0),

            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 40,
                    decoration: BoxDecoration(
                        color: Colors.deepPurple.shade50,
                        borderRadius: BorderRadius.circular(12)
                    ),
                    child: Center(child:
                        Text( "$result ",style: TextStyle(fontSize: 22,color:Colors.deepPurple,fontWeight: FontWeight.bold),),



              ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 50,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12)
                    ),
                    child: Center(child:

                        Text( "$res Ω",style: TextStyle(fontSize: 25,color:Colors.deepPurple,fontWeight: FontWeight.bold),),






                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text("RESISTANCE",style: TextStyle(fontSize: 30,color: Colors.deepPurple,fontWeight: FontWeight.w700),),
                  SizedBox(
                    height:11
                  ),

                  ResistanceIcon(
                    firstcolor: r1color,
                    seconcolor: r2color,
                    thirdcolor: r3color,
                  ),

                  SizedBox(
                    height:25,
                  ),
                  Container(
                    height: 250,

                    child: GridView.count(
                      padding: const EdgeInsets.all(10),
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      crossAxisCount: 4,

                      children: [
                        InkWell(
                          child: Column(
                            children: [
                              Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                              ),
                              Text("Black"),
                            ],
                          ),
                          onTap: (){
                            setState(() {
                              if(c==0){
                                a=map['black'];
                                r1color=Colors.black;
                                result="Enter color of second band";
                                c+=1;
                              }
                              else if(c==1){
                                b=map['black'];
                                r2color=Colors.black;
                                result="Enter color of third band";
                                c+=1;
                              }
                              else if(c==2){
                                d= map['black'];
                                r3color=Colors.black;
                                var k = ((a*10)+b);
                                result="Enter color of third band";
                                third_band=number(d, k);
                                res= "$third_band";
                                print("$result");
                                result = "";
                                c+=1;
                              }
                            });

                          },

                        ),

                        Expanded(
                          child: InkWell(
                            child: Column(
                              children: [
                                Container(
                                  height: 40,
                                  width: 40,

                                  decoration: BoxDecoration(
                                    color: Colors.brown,
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                ),
                                Text("brown")
                              ],

                            ),
                            onTap: (){
                              setState(() {
                                if(c==0){
                                  a=map['brown'];
                                  r1color=Colors.brown;
                                  result="Enter color of second band";
                                  c+=1;
                                }
                                else if(c==1){
                                  b=map['brown'];
                                  r2color=Colors.brown;
                                  result="Enter color of third band";
                                  c+=1;
                                }
                                else if(c==2){
                                  d= map['brown'];
                                  r3color=Colors.brown;
                                  var k = ((a*10)+b);
                                  result="Enter color of third band";
                                  third_band=number(d, k);
                                  res= "$third_band";
                                  print("$result");
                                  result = "";
                                  c+=1;
                                }

                              });

                            },

                          ),
                        ),

                        InkWell(
                          child: Column(
                            children: [
                              Container(
                                height: 40,
                                width: 40,

                                decoration: BoxDecoration(
                                  color: Colors.red,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                              ),
                              Text("red"),
                            ],
                          ),
                          onTap: (){
                            setState(() {
                              if(c==0){
                                a=map['red'];
                                r1color=Colors.red;
                                result="Enter color of second band";
                                c+=1;
                              }
                              else if(c==1){
                                b=map['red'];
                                r2color=Colors.red;
                                result="Enter color of third band";
                                c+=1;
                              }
                              else if(c==2){
                                d= map['red'];
                                r3color=Colors.red;
                                var k = ((a*10)+b);
                                result="Enter color of third band";
                                third_band=number(d, k);
                                res= "$third_band";
                                print("$result");
                                result = "";
                                c+=1;
                              }

                            });

                          },

                        ),

                        InkWell(
                          child: Column(
                            children: [
                              Container(
                                height: 40,
                                width: 40,

                                decoration: BoxDecoration(
                                  color: Colors.orange,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                              ),
                              Text("Orange"),
                            ],
                          ),
                          onTap: (){
                            setState(() {
                              if(c==0){
                                a=map['orange'];
                                r1color=Colors.orange;
                                result="Enter color of second band";
                                c+=1;
                              }
                              else if(c==1){
                                b=map['orange'];
                                r2color=Colors.orange;
                                result="Enter color of third band";
                                c+=1;
                              }
                              else if(c==2){
                                d= map['orange'];
                                r3color=Colors.orange;
                                var k = ((a*10)+b);
                                result="Enter color of third band";
                                third_band=number(d, k);
                                res= "$third_band";
                                result = "";
                                print("$result");
                                c+=1;
                              }

                            });

                          },

                        ),

                        InkWell(
                          child: Column(
                            children: [
                              Container(
                                height: 40,
                                width: 40,

                                decoration: BoxDecoration(
                                  color: Colors.yellow,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                              ),
                              Text("Yello"),
                            ],
                          ),
                          onTap: (){
                            setState(() {
                              if(c==0){
                                a=map['yello'];
                                r1color=Colors.yellow;
                                result="Enter color of second band";
                                c+=1;
                              }
                              else if(c==1){
                                b=map['yello'];
                                r2color=Colors.yellow;
                                result="Enter color of third band";
                                c+=1;
                              }
                              else if(c==2){
                                d= map['yello'];
                                r3color=Colors.yellow;
                                var k = ((a*10)+b);
                                result="Enter color of third band";
                                third_band=number(d, k);
                                res= "$third_band";
                                print("$result");
                                result = "";
                                c+=1;
                              }

                            });

                          },

                        ),

                        InkWell(
                          child: Column(
                            children: [
                              Container(
                                height: 40,
                                width: 40,

                                decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                              ),
                              Text("Green"),
                            ],
                          ),
                          onTap: (){
                            setState(() {
                              if(c==0){
                                a=map['green'];
                                r1color=Colors.green;
                                result="Enter color of second band";
                                c+=1;
                              }
                              else if(c==1){
                                b=map['green'];
                                r2color=Colors.green;

                                result="Enter color of third band";
                                c+=1;
                              }
                              else if(c==2){
                                d= map['green'];
                                r3color=Colors.green;

                                var k = ((a*10)+b);
                                result="Enter color of third band";
                                third_band=number(d, k);
                                res= "$third_band";
                                print("$result");
                                result = "";
                                c+=1;
                              }
                            }
                            );

                          },

                        ),
                        InkWell(
                          child: Column(
                            children: [
                              Container(
                                height: 40,
                                width: 40,

                                decoration: BoxDecoration(
                                  color: Colors.blue,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                              ),
                              Text("blue"),
                            ],
                          ),
                          onTap: (){
                            setState(() {
                              if(c==0){
                                a=map['blue'];
                                r1color=Colors.blue;

                                result="Enter color of second band";
                                c+=1;
                              }
                              else if(c==1){
                                b=map['blue'];
                                r2color=Colors.blue;
                                result="Enter color of third band";
                                c+=1;
                              }
                              else if(c==2){
                                d= map['blue'];
                                r3color=Colors.blue;
                                var k = ((a*10)+b);
                                result="Enter color of third band";
                                third_band=number(d, k);
                                res= "$third_band";
                                print("$result");
                                result = "";
                                c+=1;
                              }

                            });

                          },

                        ),
                        InkWell(
                          child: Column(
                            children: [
                              Container(
                                height: 40,
                                width: 40,

                                decoration: BoxDecoration(
                                  color: Colors.purple,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                              ),
                              Text("Violet"),
                            ],
                          ),
                          onTap: (){
                            setState(() {
                              if(c==0){
                                a=map['vilet'];
                                r1color=Colors.purple;
                                result="Enter color of second band";
                                c+=1;
                              }
                              else if(c==1){
                                b=map['vilet'];
                                r2color=Colors.purple;
                                result="Enter color of third band";
                                c+=1;
                              }
                              else if(c==2){
                                d= map['vilet'];
                                r3color=Colors.purple;
                                var k = ((a*10)+b);
                                result="Enter color of third band";
                                third_band=number(d, k);
                                res= "$third_band";
                                print("$result");
                                result = "";
                                c+=1;
                              }

                            });

                          },

                        ),
                        InkWell(
                          child: Column(
                            children: [
                              Container(
                                height: 40,
                                width: 40,

                                decoration: BoxDecoration(
                                  color: Colors.grey.shade600,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                              ),
                              Text("grey"),
                            ],
                          ),
                          onTap: (){
                            setState(() {
                              if(c==0){
                                a=map['grey'];
                                r1color=Colors.grey;
                                result="Enter color of second band";
                                c+=1;
                              }
                              else if(c==1){
                                b=map['grey'];
                                r2color=Colors.grey;
                                result="Enter color of third band";
                                c+=1;
                              }
                              else if(c==2){
                                d= map['grey'];
                                r3color=Colors.grey;
                                var k = ((a*10)+b);
                                result="Enter color of third band";
                                third_band=number(d, k);
                                res= "$third_band";
                                print("$result");
                                result = "";
                                c+=1;
                              }
                            });

                          },
                        ),
                        InkWell(
                          child: Column(
                            children: [
                              Container(
                                height: 40,
                                width: 40,

                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                              ),
                              Text("white"),
                            ],
                          ),
                          onTap: (){
                            setState(() {
                              if(c==0){
                                a=map['white'];
                                r1color=Colors.white;
                                result="Enter color of second band";
                                c+=1;
                              }
                              else if(c==1){
                                b=map['white'];
                                r2color=Colors.white;
                                result="Enter color of third band";
                                c+=1;
                              }
                              else if(c==2){
                                d= map['white'];
                                r3color=Colors.white;
                                var k = ((a*10)+b);
                                result="Enter color of third band";
                                third_band=number(d, k);
                                res= "$third_band";
                                print("$result");
                                result = "";
                                c+=1;
                              }
                            });

                          },
                        ),
                        InkWell(
                          child: Column(
                            children: [
                              Container(
                                height: 40,
                                width: 40,

                                decoration: BoxDecoration(
                                  color: Colors.orangeAccent.shade200,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                              ),
                              Text("Golden"),
                            ],
                          ),
                          onTap: (){
                            setState(() {
                              if(c==0){
                                a=map['black'];
                                result="Enter color of second band";
                                c+=1;
                              }
                              else if(c==1){
                                b=map['black'];
                                result="Enter color of third band";
                                c+=1;
                              }
                              else if(c==2){
                                d= map['black'];
                                var k = ((a*10)+b);
                                result="Enter color of third band";
                                third_band=number(d, k);
                                res= "$third_band";
                                print("$result");
                                result = "";
                                c+=1;
                              }
                            });

                          },
                        ),
                        InkWell(
                          child: Column(
                            children: [
                              Container(
                                height: 40,
                                width: 40,

                                decoration: BoxDecoration(
                                  color: Colors.grey,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                              ),
                              Text("Silver")
                            ],
                          ),
                          onTap: (){
                            setState(() {
                              if(c==0){
                                a=map['black'];
                                result="Enter color of second band";
                                c+=1;
                              }
                              else if(c==1){
                                b=map['black'];
                                result="Enter color of third band";
                                c+=1;
                              }
                              else if(c==2){
                                d= map['black'];
                                var k = ((a*10)+b);
                                result="Enter color of third band";
                                third_band=number(d, k);
                                res= "$third_band";
                                print("$result");
                                result = "";
                                c+=1;
                              }
                            });

                          },
                        ),



                      ],
                    ),
                  ),
                  
                  SizedBox(
                    height: 11,
                  ),

                  ElevatedButton(onPressed: (){
                    setState(() {
                      result= "Enter color of first band: ";
                      c=0;
                      r1color = Colors.white;
                      r2color= Colors.white;
                      r3color=Colors.white;
                      res ="";


                    });
                  }, child: Icon(Icons.refresh)),

                ],
              ),

            ),
          )
      ),
    );
  }
}
