import 'package:flutter/material.dart';

import 'course_info.dart';


class StudentProfileHome extends StatelessWidget {
  const StudentProfileHome({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
        appBar: AppBar(
          title: Text("Personal Information",
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
            ),),
          centerTitle: true,
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xFFFF7F50),  // Coral
                  Color(0xFF87CEFA),  // Light Sky Blue
                  Color(0xFF00CED1),  // Dark Turquoise
                  Color(0xFF9932CC),  // Dark Orchid
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
          ),
        ),
        body: SizedBox(
          width: size.width,
          height: size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: size.width * .35,
                height: size.width * .35,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(1000)),
                child: Padding(
                  padding: const EdgeInsets.all(5),
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(1000),
                      child: Image.asset(
                        "assets/images/img.png",
                        width: size.width * .35,
                        height: size.width * .35,
                        fit: BoxFit.cover,
                      )),
                ),
              ),
              const SizedBox(
                height: 21,
              ),
              Text(
                "Sumaiya Akter (Runa)",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: size.width * .055,
                    fontWeight: FontWeight.w900),
              ),
              const SizedBox(
                height: 21,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (value) => const CourseInfo()));
                },
                style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all(Color(0xFFFF7F50))
                ),
                child: const Text("show course info",
                style: TextStyle(
                  color: Colors.black
                ),
                ),
              )
            ],
          ),
        ));
  }
}
