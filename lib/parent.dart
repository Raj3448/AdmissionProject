import 'package:flutter/material.dart';
import 'package:flutter_application_1/YearSelection.dart';
//import 'thirdscreen.dart';

class Parent extends StatefulWidget {
  const Parent({super.key});

  @override
  State<Parent> createState() => _ParentState();
}

class _ParentState extends State<Parent> {

  void _goToThirdScreen() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const YearSelection(),
      ),
    );
  } 

  TextEditingController firstNameController = TextEditingController();
  TextEditingController middleNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController dateController = TextEditingController();
  TextEditingController fatherNameController = TextEditingController();
  TextEditingController motherNameController = TextEditingController();
  TextEditingController fatherEmailController = TextEditingController();
  TextEditingController motherEmailController = TextEditingController();
  TextEditingController fatherPhoneController = TextEditingController();
  TextEditingController motherPhoneController = TextEditingController();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );

    if (picked != null && picked != DateTime.now()) {
      dateController.text = "${picked.day}/${picked.month}/${picked.year}";
    }
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
        child: Container(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Parents Information",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              const Text(
                "Father's Information",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                "Father's Name",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Color.fromARGB(255, 74, 73, 73),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: fatherNameController,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: "First Middle Last",
                  hintStyle: const TextStyle(
                    fontWeight: FontWeight.w400,
                    color: Color.fromARGB(255, 66, 64, 64),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(45),
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              const Text(
                "Father's Email",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Color.fromARGB(255, 74, 73, 73),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: fatherEmailController,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: "abc@email.com",
                  hintStyle: const TextStyle(
                    fontWeight: FontWeight.w400,
                    color: Color.fromARGB(255, 66, 64, 64),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(45),
                  ),
                ),
                keyboardType: TextInputType.emailAddress,
              ),
              const SizedBox(
                height: 25,
              ),
              const Text(
                "Father's Phone",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Color.fromARGB(255, 74, 73, 73),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: fatherPhoneController,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: "0000000000",
                  hintStyle: const TextStyle(
                    fontWeight: FontWeight.w400,
                    color: Color.fromARGB(255, 66, 64, 64),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(45),
                  ),
                ),
                keyboardType: TextInputType.phone,
              ),
              const SizedBox(
                height: 25,
              ),
              const Text(
                "Mother's Information",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                "Mother's Name",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Color.fromARGB(255, 74, 73, 73),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: motherNameController,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: "First Name",
                  hintStyle: const TextStyle(
                    fontWeight: FontWeight.w400,
                    color: Color.fromARGB(255, 66, 64, 64),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(45),
                  ),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              const Text(
                "Mother's Email",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Color.fromARGB(255, 74, 73, 73),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: motherEmailController,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: "xyv@email.com",
                  hintStyle: const TextStyle(
                    fontWeight: FontWeight.w400,
                    color: Color.fromARGB(255, 66, 64, 64),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(45),
                  ),
                ),
                keyboardType: TextInputType.emailAddress,
              ),
              const SizedBox(
                height: 25,
              ),
              const Text(
                "Mother's Phone",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: Color.fromARGB(255, 74, 73, 73),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              TextFormField(
                controller: motherPhoneController,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: "0000000000",
                  hintStyle: const TextStyle(
                    fontWeight: FontWeight.w400,
                    color: Color.fromARGB(255, 66, 64, 64),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(45),
                  ),
                ),
                keyboardType: TextInputType.phone,
              ),
              const SizedBox(
                height: 25,
              ),
              Container(
                alignment: Alignment.bottomRight,
                //padding: const EdgeInsets.only(right: 20),
                child: ElevatedButton(
                  onPressed: _goToThirdScreen,
                  style: ButtonStyle(
                      fixedSize: const MaterialStatePropertyAll(Size(150, 50)),
                      shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(45)))),
                  child: const Text(
                    "Next",
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}