import 'package:flutter/material.dart' hide Colors;
import 'colours.dart';

class StudentEnquiry4 extends StatefulWidget {
  const StudentEnquiry4({super.key});

  @override
  State<StudentEnquiry4> createState() => _StudentEnquiry4State();
}

class _StudentEnquiry4State extends State<StudentEnquiry4> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back_ios_new_rounded),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search_rounded),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.notifications_none),
          ),
        ],
        iconTheme: const IconThemeData(color: Colors.base),
        backgroundColor: Colors.primary,
        toolbarHeight: 120,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 16),
          child: SizedBox(
            child: Column(
              children: const [
                Align(
                  alignment: Alignment.topLeft,
                  child: SizedBox(
                    width: 279,
                    height: 30,
                    child: Text(
                      "Book a Free Counselling",
                      style: TextStyle(
                          color: Colors.accent,
                          fontFamily: 'Outfit-SemiBold',
                          fontStyle: FontStyle.normal,
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 0.64),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
