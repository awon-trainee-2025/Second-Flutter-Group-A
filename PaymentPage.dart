import 'package:flutter/material.dart';

class PaymentPage extends StatelessWidget {
  final TextEditingController cardController = TextEditingController();
  final TextEditingController dateController = TextEditingController();
  final TextEditingController cvvController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Pay according to category",
          style: TextStyle(color: Colors.white),
          textAlign: TextAlign.center,
        ),
        backgroundColor: const Color.fromARGB(255, 85, 95, 147),
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: cardController,
              decoration: const InputDecoration(
                hintText: "16 digits number",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 25),
            Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: dateController,
                    decoration: const InputDecoration(
                      hintText: "Expiration date",
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                const SizedBox(width: 15),
                Expanded(
                  child: TextField(
                    controller: cvvController,
                    decoration: const InputDecoration(
                      hintText: "CVV / CVC",
                      border: OutlineInputBorder(),
                    ),
                    obscureText: true,
                  ),
                ),
              ],
            ),
            const Spacer(), // يدفع الزر للأسفل
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(double.infinity, 50),
                backgroundColor:  Color.fromARGB(255, 85, 95, 147),
              ),
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    title: Column(
                      children: [
                        Image.asset('images/succed.png', width: 70),
                        const SizedBox(height: 10),
                        const Text(
                          "Payment completed successfully",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                      ],
                    ),
                    actions: [
                      Center(
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text("Close"),
                          style: ElevatedButton.styleFrom(
                            backgroundColor:   Color.fromARGB(255, 85, 95, 147),
                            foregroundColor: Colors.white,
                          ),
                        ),
                      )
                    ],
                  ),
                );
              },
              child: const Text(
                "PAY",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


