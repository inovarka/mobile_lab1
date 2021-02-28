import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class Student {
  String Name = "name";
  String Surname = "surname";

  Student({this.Name, this.Surname});

  @override ToString()=>'Name: $Name\nSurname: $Surname';
}

class Group {
  String _group = "IP-85";

  String get group => _group;
  set group(String value) => _group = value;

}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    String name = 'Pavlo';
    String surname = 'Tymofeienko';

    Student student = Student(Name:name,Surname: surname);

    Group group = Group();
    group.group = "IP-84";

    return MaterialApp(
      title: 'Welcome to Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Pavlo Tymofeienko IP-84'),
        ),
        body: Center(
          child: Text(student.ToString() + "\n" + group.group),
        ),
      ),
    );
  }
}