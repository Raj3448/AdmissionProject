// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

class Payment extends StatefulWidget {
  const Payment({super.key});

  @override
  _PaymentState createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Payments"),
       backgroundColor: Colors.blue,
      ),
      backgroundColor: const Color.fromARGB(255, 215, 232, 247),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Display total fees and remaining fees
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Total Fees:",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
                Text(
                  "₹XXXXX",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            Container(
              height: 1,
              width: 500,
              color: Colors.black,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Remaining Fees:",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
                Text(
                  "₹XXXXX",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            // Display UPI QR Code
            Image.asset(
              "lib/assets/images/paytmqrjupiter.jpg",
              height: 200,
              width: 200,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 20),
            // Download Button
            ElevatedButton(
              onPressed: () {
                // Add logic to download the QR code
              },
              child: const Text("Download QR Code"),
            ),
            const SizedBox(height: 20),
            // Amount you're paying TextField
            SizedBox(
              height: 50,
              child: TextField(
                decoration: InputDecoration(
                  labelText: "Amount you're paying",
                  labelStyle: TextStyle(
                    fontSize: 13
                  ),
                  border: OutlineInputBorder(),
                ),
              ),
            ),

            const SizedBox(height: 20),
            // Enter your UPI ID TextField
            SizedBox(
              height: 50,
              child: TextField(
                decoration: InputDecoration(
                  labelText: "Enter your UPI ID",
                  labelStyle: TextStyle(
                    fontSize: 13
                  ),
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            const SizedBox(height: 20),
            // Payment Options
            const Text(
              "Payment Options:",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                // Google Pay
                InkWell(
                  onTap: () {
                    // Add logic for Google Pay payment
                  },
                  child: Image.asset(
                    "lib/assets/images/gpay2.png",
                    height: 80,
                    width: 80,
                  ),
                ),
                // Paytm
                InkWell(
                  onTap: () {
                    // Add logic for Paytm payment
                  },
                  child: Image.asset(
                    "lib/assets/images/Paytm2.png",
                    height: 80,
                    width: 80,
                  ),
                ),
                // PhonePe
                InkWell(
                  onTap: () {
                    // Add logic for PhonePe payment
                  },
                  child: Image.asset(
                    "lib/assets/images/phonepe1.png",
                    height: 80,
                    width: 80,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}