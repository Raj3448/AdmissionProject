import 'package:flutter/material.dart';
import 'package:flutter_application_1/Document.dart';
import 'package:flutter_application_1/screens/FEDSEForm.dart';
import 'package:flutter_application_1/Profile.dart';
import 'package:flutter_application_1/YearSelection.dart';
import 'package:flutter_application_1/parent.dart';
import 'package:flutter_application_1/screens/personal.dart';

class Status extends StatefulWidget {
  const Status({Key? key}) : super(key: key);

  @override
  State<Status> createState() => _StatusState();
}

class _StatusState extends State<Status> {
  int _currentStep = 0;

  List<Step> _formSteps = [
    Step(
      title: Text("Personal Details"),
      content: PersonalDetailsStep(),
    ),
    Step(
      title: Text("Parents Information"),
      content: ParentsInformationStep(),
    ),
    Step(
      title: Text("Additional Details"),
      content: AdditionalDetailsStep(),
    ),
    Step(
      title: Text("Document Uploadation"),
      content: DocumentUploadationStep(),
    ),
    Step(
      title: Text("Payment"),
      content: PaymentStep(),
    ),
  ];

  void _navigateToScreen(int index) {
    switch (index) {
      case 0:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const Personal()),
        );
        break;
      case 1:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const Parent()),
        );
        break;
      case 2:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const FEForm()),
        );
        break;
      case 3:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const Documents ()),
        );
        break;
      // Add more cases for other steps if needed
    }
  }
  final List<IconData> bottomIcons = [
    Icons.home,
    Icons.notifications,
    Icons.person,
  ];

  final List<String> bottomIconNames = [
    'Home',
    'Status',
    'Profile',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("TSSM's BSCOER"),
      backgroundColor: Colors.blue,
      ),
      backgroundColor: const Color.fromARGB(255, 215, 232, 247),
      body: Stepper(
        currentStep: _currentStep,
        onStepContinue: () {
          if (_currentStep < _formSteps.length - 1) {
            setState(() {
              _currentStep += 1;
            });
          } else {
            // If on the last step, push a new screen onto the stack
            _navigateToScreen(_currentStep);
          }
        },
        onStepCancel: () {
          if (_currentStep > 0) {
            setState(() {
              _currentStep -= 1;
            });
          } else {
            // If on the first step, push a new screen onto the stack
            _navigateToScreen(_currentStep);
          }
        },
        steps: _formSteps,
      ),
      bottomNavigationBar: BottomAppBar(
  color: Colors.blue,
  child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children: List.generate(bottomIcons.length, (index) {
      return Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          IconButton(
            icon: Icon(bottomIcons[index]),
            onPressed: () {
              if (bottomIconNames[index] == 'Home') {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const YearSelection()),
                );
              } else if (bottomIconNames[index] == 'Status') {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Status()),
                );
              } else if (bottomIconNames[index] == 'Profile') {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Profile()),
                );
              }
            },
            tooltip: bottomIconNames[index],
          ),
          Text(
            bottomIconNames[index],
            style: TextStyle(fontSize: 12),
          ),
        ],
      );
    }),
  ),
),
    );
  }
}

class PersonalDetailsStep extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Implement the UI for collecting personal details
    return Container(
      // Your personal details form UI here
    );
  }
}

class ParentsInformationStep extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Implement the UI for collecting parents' information
    return Container(
      // Your parents' information form UI here
    );
  }
}

class AdditionalDetailsStep extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Implement the UI for collecting additional details
    return Container(
      // Your additional details form UI here
    );
  }
}

class DocumentUploadationStep extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Implement the UI for document uploadation
    return Container(
      // Your document uploadation form UI here
    );
  }
}

class PaymentStep extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Implement the UI for payment
    return Container(
      // Your payment form UI here
    );
  }
}

