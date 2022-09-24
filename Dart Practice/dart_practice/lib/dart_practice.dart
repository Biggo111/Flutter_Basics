import 'package:dart_practice/dart_practice.dart' as dart_practice;

/*
constructor = 3 types = defalut, named, parameterized
parameterized = 3 types = positional, named, optional
*/

void main(List<String> arguments) {
  Student student = Student();
  student.student(name: "Biggo", id: 20, university: "Leading", cgpa: 3.7); 
  print(student.name);
  print(student.id);
  print(student.cgpa);
  print(student.university);
}
class Student{
  String? name;
  int? id;
  double? cgpa;
  String? university;
  student({String? name, int? id, double? cgpa, String? university}){
    this.name=name;
    this.id=id;
    this.cgpa=cgpa;
    this.university=university;
  }

}