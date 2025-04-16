import 'package:flutter/material.dart';
import 'package:task2_/custmeTextF.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key, });
  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  final TextEditingController label1C = TextEditingController();
  final TextEditingController label2C = TextEditingController();
  final TextEditingController label3C = TextEditingController();

String label1 = '';
String label2 = '';
String label3 = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
body: SafeArea(
  child: SingleChildScrollView(
    child: Padding(padding: const EdgeInsets.all(20),
    child: Column(
    children: [
    custmeTextF(label:'16 digits number',hintText:'16 digits number',icon: Icon(Icons.credit_card),controller:label1C ,),
  
   
    // you can use row inside of column and children
    // Row()
    SizedBox(height: 10,),
    Row(
      children: [
        Expanded(
          flex: 2,
        child: custmeTextF(label:'exparation date',hintText:'7/4',controller:label2C ,)),
        SizedBox(width: 6,),
        Expanded(
          flex: 1,
          child: custmeTextF(label:'CVV/CVC',hintText:'****',controller:label3C ,)),

],),
SizedBox(height: 10,),
ElevatedButton(
                  onPressed: () {
                    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text("warning!"),
        content: Text("if you returned The information you entered will be deleted. Do you want to go back?"),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context), 
            child: Text("go back"),
          ),
        ],
      ),
    );
  },
                  child: const Text("pay",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        
                      )),
                ),
    ],
    
    
    ),
    
    ),
  ),
),




    );

  }
}
