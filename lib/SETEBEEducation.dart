import 'package:flutter/material.dart';
import 'package:flutter_application_1/Payment.dart';

class SETEBEEducation extends StatefulWidget {
  const SETEBEEducation({Key? key}) : super(key: key);

  @override
  State<SETEBEEducation> createState() => _SETEBEEducationState();
}

class _SETEBEEducationState extends State<SETEBEEducation> {
  // ... (Other controllers remain unchanged)

  void _navigateToNextScreen() {
    // ... (Existing logic remains unchanged)

    // Additional logic or data handling for the new section can be added here.

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const Payment(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("TSSM's BSCOER"),
        backgroundColor: Colors.blue,
      ),
      backgroundColor: const Color.fromARGB(255, 215, 232, 247),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 20),
            const Text(
              "About Education",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              "FE Marks:",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Color.fromARGB(255, 74, 73, 73),
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              "1. 1st Sem :",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Color.fromARGB(255, 74, 73, 73),
              ),
            ),
            const SizedBox(height: 10),
            TextFormField(
              // Use the appropriate controller for English marks
              // For example, create a new TextEditingController if needed
              // controller: englishMarksController,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                hintText: "Enter CGPA/SGPA",
                hintStyle: const TextStyle(
                  fontWeight: FontWeight.w400,
                  color: Color.fromARGB(255, 66, 64, 64),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(45),
                ),
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              "2. 2nd Sem:",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Color.fromARGB(255, 74, 73, 73),
              ),
            ),
            const SizedBox(height: 10),
            TextFormField(
              // Use the appropriate controller for Maths marks
              // For example, create a new TextEditingController if needed
              // controller: mathsMarksController,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                hintText: "Enter CGPA/SGPA",
                hintStyle: const TextStyle(
                  fontWeight: FontWeight.w400,
                  color: Color.fromARGB(255, 66, 64, 64),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(45),
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              "SE Marks:",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Color.fromARGB(255, 74, 73, 73),
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              "1. 1st Sem :",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Color.fromARGB(255, 74, 73, 73),
              ),
            ),
            const SizedBox(height: 10),
            TextFormField(
              // Use the appropriate controller for English marks
              // For example, create a new TextEditingController if needed
              // controller: englishMarksController,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                hintText: "Enter CGPA/SGPA",
                hintStyle: const TextStyle(
                  fontWeight: FontWeight.w400,
                  color: Color.fromARGB(255, 66, 64, 64),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(45),
                ),
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              "2. 2nd Sem:",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Color.fromARGB(255, 74, 73, 73),
              ),
            ),
            const SizedBox(height: 10),
            TextFormField(
              // Use the appropriate controller for Maths marks
              // For example, create a new TextEditingController if needed
              // controller: mathsMarksController,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                hintText: "Enter CGPA/SGPA",
                hintStyle: const TextStyle(
                  fontWeight: FontWeight.w400,
                  color: Color.fromARGB(255, 66, 64, 64),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(45),
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              "TE Marks:",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Color.fromARGB(255, 74, 73, 73),
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              "1. 1st Sem :",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Color.fromARGB(255, 74, 73, 73),
              ),
            ),
            const SizedBox(height: 10),
            TextFormField(
              // Use the appropriate controller for English marks
              // For example, create a new TextEditingController if needed
              // controller: englishMarksController,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                hintText: "Enter CGPA/SGPA",
                hintStyle: const TextStyle(
                  fontWeight: FontWeight.w400,
                  color: Color.fromARGB(255, 66, 64, 64),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(45),
                ),
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              "2. 2nd Sem:",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Color.fromARGB(255, 74, 73, 73),
              ),
            ),
            const SizedBox(height: 10),
            TextFormField(
              // Use the appropriate controller for Maths marks
              // For example, create a new TextEditingController if needed
              // controller: mathsMarksController,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                hintText: "Enter CGPA/SGPA",
                hintStyle: const TextStyle(
                  fontWeight: FontWeight.w400,
                  color: Color.fromARGB(255, 66, 64, 64),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(45),
                ),
              ),
            ),
            const SizedBox(height: 25),
            Container(
              alignment: Alignment.bottomRight,
              child: ElevatedButton(
                onPressed: _navigateToNextScreen,
                style: ButtonStyle(
                  fixedSize: const MaterialStatePropertyAll(Size(150, 50)),
                  shape: MaterialStatePropertyAll(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(45),
                    ),
                  ),
                ),
                child: const Text(
                  "Next",
                  style: TextStyle(fontSize: 20, color: Colors.black),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
