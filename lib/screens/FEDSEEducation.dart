import 'package:flutter/material.dart';
import 'package:flutter_application_1/Document.dart';

class FEEducation extends StatefulWidget {
  const FEEducation({Key? key}) : super(key: key);

  @override
  State<FEEducation> createState() => _FEEducationState();
}

class _FEEducationState extends State<FEEducation> {

  void _navigateToNextScreen() {
    

    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const Documents(),
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
              "SSC Marks:",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Color.fromARGB(255, 74, 73, 73),
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              "1. English:",
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
                hintText: "Enter English marks...",
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
              "2. Maths:",
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
                hintText: "Enter Maths marks...",
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
              "3. Science:",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Color.fromARGB(255, 74, 73, 73),
              ),
            ),
            const SizedBox(height: 10),
            TextFormField(
              // Use the appropriate controller for Science marks
              // For example, create a new TextEditingController if needed
              // controller: scienceMarksController,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                hintText: "Enter Science marks...",
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
              "HSC Marks:",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Color.fromARGB(255, 74, 73, 73),
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              "1. Physics:",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Color.fromARGB(255, 74, 73, 73),
              ),
            ),
            const SizedBox(height: 10),
            TextFormField(
              // Use the appropriate controller for Physics marks
              // For example, create a new TextEditingController if needed
              // controller: physicsMarksController,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                hintText: "Enter Physics marks...",
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
              "2. Chemistry:",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Color.fromARGB(255, 74, 73, 73),
              ),
            ),
            const SizedBox(height: 10),
            TextFormField(
              // Use the appropriate controller for Chemistry marks
              // For example, create a new TextEditingController if needed
              // controller: chemistryMarksController,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                hintText: "Enter Chemistry marks...",
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
              "3. Maths:",
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
                hintText: "Enter Maths marks...",
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
              "Diploma Marks:",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Color.fromARGB(255, 74, 73, 73),
              ),
            ),
            const SizedBox(height: 10),
             TextFormField(
              // Use the appropriate controller for Chemistry marks
              // For example, create a new TextEditingController if needed
              // controller: chemistryMarksController,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                hintText: "Enter Diploma marks...",
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
              "CET Marks:",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Color.fromARGB(255, 74, 73, 73),
              ),
            ),
            const SizedBox(height: 10),
            TextFormField(
              // Use the appropriate controller for Physics marks
              // For example, create a new TextEditingController if needed
              // controller: physicsMarksController,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                hintText: "Enter CET marks...",
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
              "JEE Marks:",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Color.fromARGB(255, 74, 73, 73),
              ),
            ),
            const SizedBox(height: 10),
            TextFormField(
              // Use the appropriate controller for Chemistry marks
              // For example, create a new TextEditingController if needed
              // controller: chemistryMarksController,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                hintText: "Enter JEE marks...",
                hintStyle: const TextStyle(
                  fontWeight: FontWeight.w400,
                  color: Color.fromARGB(255, 66, 64, 64),
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(45),
                ),
              ),
            ),
            // Continue with the rest of the form fields...
            // ... (Follow the same structure for HSC marks and other fields)

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
