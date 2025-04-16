import 'package:flutter/material.dart';

class Task2 extends StatefulWidget {
  const Task2({super.key});

  @override
  State<Task2> createState() => _Task2State();
}

class _Task2State extends State<Task2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20), 
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("16 digits number", textAlign: TextAlign.left),

              TextField(
                decoration: InputDecoration(
                  labelText: "16 digits number",
                  border: OutlineInputBorder(),
                ),
              ),

              SizedBox(height: 150),
              Row(
                children: [
                  Expanded(
                    child: Text("Expiration date"),
                  ),
                  SizedBox(width: 10), 
                  Expanded(
                    child: Text("cvv/ cvc"),
                  ),
                ],
              ),
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: "06/24",
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                  SizedBox(width: 10), 
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: "***",
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 200),

              ElevatedButton(style: ElevatedButton.styleFrom(
                            backgroundColor: const Color.fromARGB(255, 12, 36, 170),
                            foregroundColor: Colors.white,),
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        backgroundColor: Colors.white,
                        title:Column(children: [
                        Image.network('data:image/png;base64,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',  width: 60, height: 60),
                        Text("Warning!",style: TextStyle(color: const Color.fromARGB(255, 12, 36, 170)),),
                        ],),
                        content: Text("If you return, the information you entered will be deleted. Do you want to go back?",style: TextStyle(fontSize:20 ),),
                        actions: [
                          Center(child: 
                          ElevatedButton(style: ElevatedButton.styleFrom(
                            backgroundColor: const Color.fromARGB(255, 12, 36, 170),
                            foregroundColor: Colors.white,),
                            onPressed: () {
                              Navigator.pop(context); 
                            },
                            child: Text("Go back",),
                          ),
                      )],
                      );
                    },
                  );
                },
                child: Text("Pay"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
