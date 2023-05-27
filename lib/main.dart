import 'package:flutter/material.dart';

void main()
{
  runApp(
    MaterialApp(
        title:"simple form",
        home:SimpleForm()
    )


  );
}


class SimpleForm extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _SimpleFormState();
  }

}

class _SimpleFormState extends State<SimpleForm>{
 String name =""; // the factor which chnage on the state should be define

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Simple Form"),
      ),
      body: Container(
        margin:EdgeInsets.all(30.0),
        child: Column(
          children: <Widget>[
            TextField(
              onSubmitted: (String userName) {
                setState(() {
                  name = userName;
                });
              },
            ),
            Padding(padding: EdgeInsets.all(20.0),
              child: Text("Name is $name ",
                style: TextStyle(fontSize: 30.0),),
            )
          ],
            )

        ),
      );


  }
}
