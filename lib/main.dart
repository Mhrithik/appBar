import 'package:flutter/material.dart';
void main (){
  runApp(appbar());
}
class appbar extends StatelessWidget {
  const appbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:apppage(),
    );
  }
}
class apppage extends StatefulWidget {
  const apppage({Key? key}) : super(key: key);

  @override
  State<apppage> createState() => _apppageState();
}

class _apppageState extends State<apppage> {

  var contactname = ['Tamilrockers', 'OTT platform', 'Web series', 'Tamil Movies Link', 'Back up channel','vinith mech','hameed',
  ];
var contactnum = ['movie : Dejavu', 'movie : yaanai', 'Victim', 'Sticker', ' hello',  'vinith joined Telegram','hii',
];

TextEditingController firstbox = TextEditingController();
  TextEditingController secondbox = TextEditingController();

  var contacttime=['8.34pm','7.00pm','4.00pm','5.00pm','2.00am','3.00am','6.00am',

  ];





  @override
  Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text('Telegram'),
          leading:Icon(Icons .menu) ,
          actions:[ IconButton(onPressed: (){
            setState(() {
              contactname.add(firstbox.text);
              contactnum.add(secondbox.text);
            });
          } , icon: Icon(Icons.add))],


        ),

        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(color: Colors.white,child: TextField(controller:  firstbox),),
              Container(color: Colors.white,child: TextField(controller:  secondbox),),
              Container( height: 500,
                child: Center(child:
                ListView .builder
                  (itemBuilder:( BuildContext context, index)
                    {

                      return ListTile(
                          title: Text( contactname[index]),
                        subtitle: Text(contactnum[index]),
                        leading: CircleAvatar(backgroundColor: Colors.blue,
                            child: Text(contactname[index][0],style: TextStyle(color: Colors.black),
                            ),
                        ),
                        trailing: Text(contacttime[index]),
                        shape: Border(bottom: BorderSide(color: Colors.black,width: 2)),
                        tileColor: Colors .white,

                        );
                    },
itemCount: contactname.length,
                ),
      ),
              ),
            ],
          ),
        ),
      );

  }
}
