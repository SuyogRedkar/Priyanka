import 'package:flutter/material.dart' hide Colors;
import 'package:test/student_enquiry_2.2.dart';
import 'colours.dart';
class StudentEnquiry extends StatefulWidget {
  const StudentEnquiry({super.key});

  @override
  State<StudentEnquiry> createState() => _StudentEnquiryState();
}

class _StudentEnquiryState extends State<StudentEnquiry> {
  static const List<String> list = <String>['Margao', 'Panjim'];
  String? dropdownValue;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(Icons.arrow_back_ios_rounded),
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
      backgroundColor: Colors.base,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 20),
          child: SizedBox(
            child: Column(
              // ignore: prefer_const_literals_to_create_immutables
              children: [
                const Align(
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
                ),
                // ignore: prefer_const_constructors
                Align(
                  alignment: Alignment.topLeft,
                  child: const Padding(
                    padding: EdgeInsets.only(top: 32, bottom: 8),
                    child: Text(
                      "Your Name*",
                      style: TextStyle(
                          color: Colors.accent,
                          fontFamily: 'Outfit',
                          fontStyle: FontStyle.normal,
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 0.64),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: 40,
                      width: 154,
                      child: TextFormField(
                        style: const TextStyle(
                          fontFamily: 'Outfit',
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                        decoration: InputDecoration(
                          hintText: 'First Name',
                          enabledBorder: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(color: Colors.secondary),
                              borderRadius: BorderRadius.circular(4)),
                          focusedBorder: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(color: Colors.secondary),
                              borderRadius: BorderRadius.circular(4)),
                        ),
                        validator: (value) {
                          if (value!.isEmpty ||
                              !RegExp(r'^[a-z A-Z]+$').hasMatch(value)) {
                            return 'Enter Correct Name';
                          }
                          return null;
                        },
                      ),
                    ),
                    SizedBox(
                      height: 40,
                      width: 154,
                      child: TextFormField(
                        style: const TextStyle(
                          fontFamily: 'Outfit',
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                        decoration: InputDecoration(
                          hintText: 'Last Name',
                          enabledBorder: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(color: Colors.secondary),
                              borderRadius: BorderRadius.circular(4)),
                          focusedBorder: OutlineInputBorder(
                              borderSide:
                                  const BorderSide(color: Colors.secondary),
                              borderRadius: BorderRadius.circular(4)),
                        ),
                        validator: (value) {
                          if (value!.isEmpty ||
                              !RegExp(r'^[a-z A-Z]+$').hasMatch(value)) {
                            return 'Enter Correct Name';
                          }
                          return null;
                        },
                      ),
                    )
                  ],
                ),
                const Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: EdgeInsets.only(top: 17, bottom: 8),
                    child: Text(
                      "WhatsApp Number*",
                      style: TextStyle(
                          color: Colors.accent,
                          fontFamily: 'Outfit',
                          fontStyle: FontStyle.normal,
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 0.64),
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                  width: double.infinity,
                  child: TextFormField(
                    style: const TextStyle(
                      fontFamily: 'Outfit',
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                    decoration: InputDecoration(
                      hintText: 'WhatsApp Number',
                      enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.secondary),
                          borderRadius: BorderRadius.circular(4)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.secondary),
                          borderRadius: BorderRadius.circular(4)),
                    ),
                    validator: (value) {
                      if (value!.isEmpty || value.length < 10) {
                        return 'Enter Correct Number';
                      }
                      return null;
                    },
                  ),
                ),
                const Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: EdgeInsets.only(top: 17, bottom: 8),
                    child: Text(
                      "Email ID*",
                      style: TextStyle(
                          color: Colors.accent,
                          fontFamily: 'Outfit',
                          fontStyle: FontStyle.normal,
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 0.64),
                    ),
                  ),
                ),
                SizedBox(
                  height: 40,
                  width: double.infinity,
                  child: TextFormField(
                    style: const TextStyle(
                      fontFamily: 'Outfit',
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                    ),
                    decoration: InputDecoration(
                      hintText: 'Email ID*',
                      enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.secondary),
                          borderRadius: BorderRadius.circular(4)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.secondary),
                          borderRadius: BorderRadius.circular(4)),
                    ),
                    validator: (value) {
                      if (value!.isEmpty || value.length < 10) {
                        return 'Enter Correct Number';
                      }
                      return null;
                    },
                  ),
                ),
                // ignore: prefer_const_constructors
                SizedBox(
                  height: 32,
                ),
                Row(
                  children: const [
                    Text(
                      "Choose your Center*",
                      style: TextStyle(
                          color: Colors.accent,
                          fontFamily: 'Outfit',
                          fontStyle: FontStyle.normal,
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          letterSpacing: 0.64),
                    ),
                    SizedBox(
                      width: 75,
                    ),
                    Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Date of Birth*",
                        style: TextStyle(
                            color: Colors.accent,
                            fontFamily: 'Outfit',
                            fontStyle: FontStyle.normal,
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 0.64),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                        top: 8.0,
                      ),
                      child: SizedBox(
                        height: 40,
                        width: 154,
                        child: DropdownButtonFormField(
                            decoration: InputDecoration(
                              hintText: 'Center',
                              enabledBorder: OutlineInputBorder(
                                  borderSide:
                                      const BorderSide(color: Colors.secondary),
                                  borderRadius: BorderRadius.circular(4)),
                              focusedBorder: OutlineInputBorder(
                                  borderSide:
                                      const BorderSide(color: Colors.secondary),
                                  borderRadius: BorderRadius.circular(4)),
                            ),
                            value: dropdownValue,
                            icon: const Icon(Icons.arrow_drop_down),
                            onChanged: (String? value) {
                              // This is called when the user selects an item.
                              setState(() {
                                dropdownValue = value!;
                              });
                            },
                            items: list
                                .map<DropdownMenuItem<String>>((String value) {
                              return DropdownMenuItem(
                                  value: value,
                                  child: Text(
                                    value,
                                    style:
                                        const TextStyle(color: Colors.accent),
                                  ));
                            }).toList()),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20, top: 8.0),
                      child: SizedBox(
                        height: 40,
                        width: 154,
                        child: TextFormField(
                          style: const TextStyle(
                            fontFamily: 'Outfit',
                            fontSize: 12,
                            fontWeight: FontWeight.w400,
                          ),
                          decoration: InputDecoration(
                            hintText: 'DD-MM-YY',
                            enabledBorder: OutlineInputBorder(
                                borderSide:
                                    const BorderSide(color: Colors.secondary),
                                borderRadius: BorderRadius.circular(4)),
                            focusedBorder: OutlineInputBorder(
                                borderSide:
                                    const BorderSide(color: Colors.secondary),
                                borderRadius: BorderRadius.circular(4)),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
                // ignore: prefer_const_constructors
                Padding(
                  padding: const EdgeInsets.only(top: 32),
                  child: const Align(
                      alignment: Alignment.bottomLeft,
                      child: Text('*Mandatory Fields')),
                ),
                // ignore: prefer_const_constructors
                SizedBox(
                  height: 32,
                ),
                SizedBox(
                  height: 45,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (context) => const StudentEnquiry2()),
                        );
                    },
                    style: ButtonStyle(
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.accent),
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.secondary),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(14),
                      child: Text(
                        'SUBMIT',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
