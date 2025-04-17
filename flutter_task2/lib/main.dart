import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Payment Page',
      home: PaymentPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class PaymentPage extends StatefulWidget {
  @override
  _PaymentPageState createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  final cardController = TextEditingController();
  final expController = TextEditingController();
  final cvvController = TextEditingController();

  void _showWarningDialog() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        contentPadding: EdgeInsets.all(20),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                Icon(Icons.warning, color: Colors.red),
                SizedBox(width: 8),
                Text(
                  'Warning!',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(height: 12),
            Text(
              'If you return, the information you entered will be deleted.\nDo you want to go back?',
              textAlign: TextAlign.center,
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text('Go back'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Pay according to category')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // 🟢 GIF on the payment page
            Image.asset(
              'assets/pay.gif', // Replace with your actual GIF path
              height: 150,
              fit: BoxFit.contain,
            ),
            SizedBox(height: 16),

            // 🧾 Card number input
            TextField(
              controller: cardController,
              keyboardType: TextInputType.number,
              maxLength: 16,
              decoration: InputDecoration(
                labelText: '16 digits number',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 16),

            // 📅 Expiration + CVV
            Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: expController,
                    keyboardType: TextInputType.datetime,
                    decoration: InputDecoration(
                      labelText: 'Expiration date',
                      hintText: 'MM/YY',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: TextField(
                    controller: cvvController,
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: 'CVV / CVC',
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
              ],
            ),
            Spacer(),

            // 🟦 Pay button
            ElevatedButton(
              onPressed: _showWarningDialog,
              child: Text('Pay'),
              style: ElevatedButton.styleFrom(
                minimumSize: Size(double.infinity, 48),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
