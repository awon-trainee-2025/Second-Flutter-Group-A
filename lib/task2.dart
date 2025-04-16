import 'package:flutter/material.dart';

class Task2 extends StatefulWidget {
  const Task2({super.key});

  @override
  State<Task2> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<Task2> {
  TextEditingController digitsController = TextEditingController();
  TextEditingController expirationController = TextEditingController();
  TextEditingController cvvController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Payment Screen',
          style: TextStyle(color: const Color.fromARGB(255, 255, 255, 255)),
        ),
        backgroundColor: const Color.fromARGB(255, 167, 53, 4),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: TextField(
                controller: digitsController,
                decoration: InputDecoration(
                  labelText: "16 digits number",
                  hintText: "Enter 16 digits number",
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: TextField(
                      controller: expirationController,
                      decoration: InputDecoration(
                        labelText: "Expiration Date",
                        hintText: "MM/YY",
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 20),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: TextField(
                      controller: cvvController,
                      decoration: InputDecoration(
                        labelText: "CVV / CVC",
                        hintText: "Enter 3 digits",
                        border: OutlineInputBorder(),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 40),
            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      title: Text('Warning!'),
                      content: Text(
                        'If you return, the information you entered will be deleted. Do you want to go back?',
                      ),
                      actions: [
                        TextButton(
                          onPressed: () {
                            digitsController.clear();
                            expirationController.clear();
                            cvvController.clear();
                            Navigator.of(context).pop();
                          },
                          child: Text('Go back'),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: Text('Stay'),
                        ),
                      ],
                    );
                  },
                );
              },
              child: Text(
                'Pay',
                style: TextStyle(
                  fontSize: 20,
                  color: const Color.fromARGB(255, 254, 254, 254),
                ),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 167, 53, 4),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
