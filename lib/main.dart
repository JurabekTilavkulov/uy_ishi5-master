import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {


 String input="";
 Map<int,String> mapInput={};
 int birSon=0;
 List<String> list=[];

  @override
  Widget build(BuildContext context) {
    print(mapInput.keys);
    print(list);


    return Scaffold(
      backgroundColor: Colors.black,

      body: Column(   /// birinchisi history
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            flex: 3,
              child: Container(
                width:360,



                 // child: Text(list.isNotEmpty?"${list[0]} ${list[1]} ${list[2]} ${list[3]} ${list[4]}":"no",style: TextStyle(color: Colors.white,fontSize: 18),))),// tepa History qismi
              )),
          Expanded(
            flex: 1,
              child: Container(
            alignment: Alignment.bottomRight,
            padding: EdgeInsets.only(right: 10),
            child: Text("$input",style: TextStyle(color: Colors.white,fontSize: 26),),
          )),//o'rta Raqam qismi
          Expanded(
            flex: 4,
              child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(child: Row(  //birinchi qator kinopkalari
                  children: [
                    MaterialButton(  // C
                      height: 70,
                      color: Colors.grey,
                        shape: CircleBorder(),
                        onLongPress: (){
                        setState(() {
                          list.clear();
                        });
                        },
                        onPressed: (){
                        setState(() {
                          input="";
                          mapInput.clear();
                          birSon=0;

                        });
                        },
                        child: Text("C",style: TextStyle(fontSize: 22))
                    ),// C
                    MaterialButton(    //  DEL
                      height: 70,
                      color: Colors.grey,
                        shape: CircleBorder(),
                        onPressed: (){
                       int  n=input.length;
                        setState(() {
                          input=input.substring(0,n-1);
                        });
                        },
                        child: Text("DEL",style: TextStyle(fontSize: 22))
                    ), //  DEL
                    MaterialButton(  // %
                      height: 70,
                      color: Colors.grey,
                        shape: CircleBorder(),
                        onPressed: (){
                          mapInput.clear();
                          birSon=1;
                          mapInput[4]=input;
                        },
                        child: Text("%",style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold))
                    ),// %
                    MaterialButton(   //  /
                      height: 70,
                      color: Colors.amber,
                        shape: CircleBorder(),
                        onPressed: (){
                        mapInput.clear();
                        birSon=1;
                        mapInput[0]=input;

                        },
                        child: Text("/",style: TextStyle(fontSize: 22,color: Colors.white))
                    ),//  /
                  ],
                ),),// birinchi qator kinopkalari
                Expanded(child: Row(         // ikkinchi qator kinopkalari
                  children: [
                    MaterialButton(   // 7
                      height: 70,
                      color: Colors.grey[700],
                        shape: CircleBorder(),
                        onPressed: (){

                        setState(() {
                          if(birSon==1){
                            input="";
                            input=input+"7";
                            birSon=0;
                          }
                          else {
                            input=input+"7";
                          }


                        });

                        },
                        child: Text("7",style: TextStyle(fontSize: 30,color: Colors.white))
                    ),  // 7
                    MaterialButton(  //  8
                      height: 70,
                        color: Colors.grey[700],
                        shape: CircleBorder(),
                        onPressed: (){
                          setState(() {
                            if(birSon==1){
                              input="";
                              input=input+"8";
                              birSon=0;
                            }
                            else {
                              input=input+"8";
                            }
                          });
                        },
                        child:Text("8",style: TextStyle(fontSize: 30,color: Colors.white))
                    ), //  8
                    MaterialButton(   //  9
                      height: 70,
                        color: Colors.grey[700],
                        shape: CircleBorder(),
                        onPressed: (){
                          setState(() {
                            if(birSon==1){
                              input="";
                              input=input+"9";
                              birSon=0;
                            }
                            else {
                              input=input+"9";
                            }
                          });
                        },
                        child:Text("9",style: TextStyle(fontSize: 30,color: Colors.white))
                    ), // 9
                    MaterialButton(    //  x
                      height: 70,
                      color: Colors.amber,
                        shape: CircleBorder(),
                        onPressed: (){
                          mapInput.clear();
                          birSon=1;
                          mapInput[1]=input;

                        },
                        child: Text("x",style: TextStyle(fontSize: 30,color: Colors.white))
                    ), // *
                  ],
                ),),// ikkinchi qator kinopkalari
                Expanded(child: Row(
                  children: [
                    MaterialButton(   // 4
                      height: 70,
                      color: Colors.grey[700],
                        shape: CircleBorder(),
                        onPressed: (){
                          setState(() {
                            if(birSon==1){
                              input="";
                              input=input+"4";
                              birSon=0;
                            }
                            else {
                              input=input+"4";
                            }
                          });
                        },
                        child: Text("4",style: TextStyle(fontSize: 30,color: Colors.white))
                    ),  // 4
                    MaterialButton(  //  5
                      height: 70,
                        color: Colors.grey[700],
                        shape: CircleBorder(),
                        onPressed: (){
                          setState(() {
                            if(birSon==1){
                              input="";
                              input=input+"5";
                              birSon=0;
                            }
                            else {
                              input=input+"5";
                            }
                          });
                        },
                        child:Text("5",style: TextStyle(fontSize: 30,color: Colors.white))
                    ),  //  5
                    MaterialButton(   //  6
                      height: 70,
                        color: Colors.grey[700],
                        shape: CircleBorder(),
                        onPressed: (){
                          setState(() {
                            if(birSon==1){
                              input="";
                              input=input+"6";
                              birSon=0;
                            }
                            else {
                              input=input+"6";
                            }
                          });
                        },
                        child:Text("6",style: TextStyle(fontSize: 30,color: Colors.white))
                    ), //  6
                    MaterialButton(    //  -
                      height: 70,
                      color: Colors.amber,
                        shape: CircleBorder(),
                        onPressed: (){
                          mapInput.clear();
                          birSon=1;
                          mapInput[2]=input;

                        },
                        child: Text("-",style: TextStyle(fontSize: 30,color: Colors.white))
                    ),  // -
                  ],
                ),),// uchinchi qator kinopkalari
                Expanded(child: Row(
                  children: [
                    MaterialButton(   // 1
                      height: 70,
                      color: Colors.grey[700],
                        shape: CircleBorder(),
                        onPressed: (){
                          setState(() {
                            if(birSon==1){
                              input="";
                              input=input+"1";
                              birSon=0;
                            }
                            else {
                              input=input+"1";
                            }
                          });
                        },
                        child: Text("1",style: TextStyle(fontSize: 30,color: Colors.white))
                    ),//  1
                    MaterialButton(  //  2
                      height: 70,
                        color: Colors.grey[700],
                        shape: CircleBorder(),
                        onPressed: (){
                          setState(() {
                            if(birSon==1){
                              input="";
                              input=input+"2";
                              birSon=0;
                            }
                            else {
                              input=input+"2";
                            }
                          });
                        },
                        child:Text("2",style: TextStyle(fontSize: 30,color: Colors.white))
                    ), // 2
                    MaterialButton(   //  3
                      height: 70,
                        color: Colors.grey[700],
                        shape: CircleBorder(),
                        onPressed: (){
                          setState(() {
                            if(birSon==1){
                              input="";
                              input=input+"3";
                              birSon=0;
                            }
                            else {
                              input=input+"3";
                            }
                          });
                        },
                        child:Text("3",style: TextStyle(fontSize: 30,color: Colors.white))
                    ),  //  3
                    MaterialButton(    //  +
                      height: 70,
                      color: Colors.amber,
                        shape: CircleBorder(),
                        onPressed: (){
                          mapInput.clear();
                          birSon=1;
                          mapInput[3]=input;
                        },
                        child: Text("+",style: TextStyle(fontSize: 30,color: Colors.white))
                    ), // +
                  ],
                ),),// turtinchi qator kinopkalari
                Expanded(child: Row(
                  children: [
                    Container(

                      height: 70,
                      width: 170,
                      padding: EdgeInsets.only(left: 10),
                      child:  FilledButton(
                        child: Text("0",style: TextStyle(fontSize: 30,color: Colors.white)),
                        onPressed: (){
                          setState(() {
                            if(birSon==1){
                              input="";
                              input=input+"0";
                              birSon=0;
                            }
                            else {
                              input=input+"0";
                            }
                          });
                        },)
                    ),  // 0

                    MaterialButton(        //  .
                      height: 70,
                        color: Colors.grey[700],
                        shape: CircleBorder(),
                        onPressed: (){
                          setState(() {
                            input=input+".";
                          });
                        },
                        child:Text(".",style: TextStyle(fontSize: 30,color: Colors.white))
                    ), //   .
                    MaterialButton(    //  =
                      height: 70,
                      color: Colors.amber,
                        shape: CircleBorder(),
                        onPressed: (){
                        print("bir $input");

                        if(mapInput.containsKey(0)){
                          list.add(mapInput[0].toString());
                          list.add('/');
                          list.add(input);
                        }
                        else if (mapInput.containsKey(1)){
                          list.add(mapInput[1].toString());
                          list.add('x');
                          list.add(input);
                        }


                        setState(() {
                          mapInput.forEach((key, value) {
                            if(key==0){
                              input=((double.parse(value.toString())/double.parse(input.toString())).toString());
                            }
                            else if (key==1){
                              input=((double.parse(value.toString())*double.parse(input.toString())).toString());
                            }
                            else if (key==2){
                              input=((double.parse(value.toString())-double.parse(input.toString())).toString());
                            }
                            else if (key==3){
                              input=((double.parse(value.toString())+double.parse(input.toString())).toString());
                            }
                            else if (key==4){
                              input=((int.parse(value.toString())% int.parse(input.toString())).toString());
                            }
                            list..add('=')..add(input);

                          });
                          print(input);
                          birSon=0;

                        });
                        //input="";
                        print(input);
                        mapInput.clear();
                        },
                        child: Text("=",style: TextStyle(fontSize: 30,color: Colors.white))
                    ),  //   =
                  ],
                ),),// turtinchi qator kinopkalari

              ],
            ),
          )),// kinopkalar qismi

        ],
      )

    );
  }
}
