import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/FEDSEForm.dart';
import 'package:flutter_application_1/Profile.dart';
import 'package:flutter_application_1/SETEBE.dart';
import 'package:flutter_application_1/Status.dart';


class YearSelection extends StatefulWidget {
  const YearSelection({Key? key}) : super(key: key);

  @override
  State<YearSelection> createState() => _YearSelectionState();
}

class _YearSelectionState extends State<YearSelection> {
  String? selectedYear;

  void _onYearSelected(String year) {
    setState(() {
      selectedYear = year;
    });
  }

  void _navigateToNextScreen() {
    if (selectedYear != null) {
      switch (selectedYear) {
        case "First Year":
          // Navigate to FEForm.dart for First Year
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) =>const  FEForm(),
            ),
          );
          break;
          case "Direct Second Year(Diploma)":
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) =>const  FEForm(),
            ),
          );
        case "Second Year(Regular)":
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) =>const  SETEBE(),
            ),
          );
          // Handle navigation for Second Year
          // Example: Navigator.push(context, MaterialPageRoute(builder: (context) => SecondYearScreen()));
          break;
        case "Third Year":
          // Handle navigation for Third Year
          // Example: Navigator.push(context, MaterialPageRoute(builder: (context) => ThirdYearScreen()));
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) =>const  SETEBE(),
            ),
          );
          break;
        case "Fourth Year":
          // Handle navigation for Fourth Year
          // Example: Navigator.push(context, MaterialPageRoute(builder: (context) => FourthYearScreen()));
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) =>const  SETEBE(),
            ),
          );
          break;
        default:
          print("Please select a valid year before proceeding.");
      }
    } else {
      print("Please select a year before proceeding.");
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
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Choose Your Year",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            _buildYearCard("First Year"),
            _buildYearCard("Direct Second Year(Diploma)"),
            _buildYearCard("Second Year(Regular)"),
            _buildYearCard("Third Year"),
            _buildYearCard("Fourth Year"),
            const SizedBox(
              height: 20,
            ),
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
            )
          ],
        ),
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

  Widget _buildYearCard(String year) {
    return Card(
      color: selectedYear == year ? Colors.blue : Colors.white,
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: InkWell(
        onTap: () {
          _onYearSelected(year);
        },
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Center(
            child: Text(
              year,
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: selectedYear == year
                    ? Colors.white
                    : Color.fromARGB(255, 74, 73, 73),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
