import 'package:flutter/material.dart';
import 'package:myshop/widgetStyle.dart';

class myWidget extends StatelessWidget {
  const myWidget({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Wellcome'),
    );
  }
}




class myCounter extends StatefulWidget {
  const myCounter({Key? key}) : super(key: key);

  @override
  State<myCounter> createState() => _myCounterState();
}

class _myCounterState extends State<myCounter> {
  var counter=0;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text('Count:$counter',style: TextStyle(fontSize: 20),),
          Container(height: 20,),
          ElevatedButton(
            style: raisedButtonStyle,
            onPressed: () {
             setState(() {
               ; counter++;
             });
            },
            child: Text('count on press'),
          )

        ],
      ),
    );
  }
}




class myDialog extends StatefulWidget {
  const myDialog({Key? key}) : super(key: key);

  @override
  State<myDialog> createState() => _myDialogState();
}

class _myDialogState extends State<myDialog> {
  @override
  Widget build(BuildContext context) {
   return Center(
     child: Column(
       children: [
         ElevatedButton(
           style: raisedButtonStyle,
           onPressed: () {
             setState(() {
               showDialog(context: context
                   ,barrierDismissible: false, builder:(BuildContext context){
                     return AlertDialog(
                       title: Text('عنوان'),
                       content: Text('سلام گومبولی'),
                       backgroundColor: Colors.grey[100],
                       elevation: 10,
                       actions: [
                         TextButton(onPressed: (){
                           Navigator.of(context).pop();
                         } ,child: Text('بستن'),)
                       ],
                     );
                   } );
             });
           },
           child: Text('   show Altert   '),
         )
       ],
     ),
   );
  }
}





