import 'package:flutter/material.dart' hide Colors;
import 'colours.dart';
import 'package:multi_select_flutter/multi_select_flutter.dart';

class StudentEnquiry2 extends StatefulWidget {
  const StudentEnquiry2({super.key});

  @override
  State<StudentEnquiry2> createState() => _StudentEnquiry2State();
}

class Country {
  final int id;
  final String name;

  Country({
    required this.id,
    required this.name,
  });
}

class _StudentEnquiry2State extends State<StudentEnquiry2> {
  static final List<Country> _country = [
    Country(id: 1, name: "Australia"),
    Country(id: 2, name: "Canada"),
    Country(id: 3, name: "Germany"),
    Country(id: 4, name: "New Zealand"),
    Country(id: 5, name: "United Kingdom"),
    Country(id: 6, name: "USA"),
    Country(id: 7, name: "Multi Country "),
    Country(id: 8, name: "Europe"),
    Country(id: 9, name: "Undecided"),
  ];
  final _items = _country
      .map((Country) => MultiSelectItem(Country, Country.name))
      .toList();
  //List<Country> _selectedAnimals = [];
  List<Country> _selectedAnimals2 = [];
  List<Country> _selectedAnimals3 = [];
  //List<Country> _selectedAnimals4 = [];
  List<Country> _selectedAnimals5 = [];
  final _multiSelectKey = GlobalKey<FormFieldState>();

  @override
  void initState() {
    _selectedAnimals5 = _country;
    super.initState();
  }

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
      // ignore: prefer_const_constructors
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 32, horizontal: 16),
          child: SizedBox(
            child: Column(children: [
              const Align(
                alignment: Alignment.topLeft,
                child: SizedBox(
                  width: 279,
                  height: 30,
                  child: Text(
                    "Book a Free Counselling",
                    style: TextStyle(
                        color: Colors.accent,
                        fontFamily: 'Outfit',
                        fontStyle: FontStyle.normal,
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 0.64),
                  ),
                ),
              ),
              const Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: EdgeInsets.only(top: 32, bottom: 8),
                  child: SizedBox(
                    height: 18,
                    width: 62,
                    child: Text(
                      "Country*",
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
              ),
              MultiSelectDialogField(
                items: _items,
                title: Text("Animals"),
                selectedColor: Colors.accent,
                decoration: BoxDecoration(
                  color: Colors.accent.withOpacity(0.1),
                  borderRadius: BorderRadius.all(Radius.circular(40)),
                  border: Border.all(
                    color: Colors.accent,
                    width: 2,
                  ),
                ),
                buttonText: Text(
                  "Country",
                  style: TextStyle(
                    color: Colors.accent,
                    fontSize: 16,
                  ),
                ),
                onConfirm: (results) {
                  //_selectedAnimals = results;
                },
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
