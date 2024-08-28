int calculate() {
  return 6 * 7;
}

class Student {
  late int id;
  late String name;
  late List <Subject> subjects;
  Student({
    required this.id, 
    required this.name, 
    required this.subjects
    });

}
class Subject {
  late String name;
  late List<score> studentMarks;
  Subject({
    required this.name, 
    required this.studentMarks
    });
}

class score{
  late String exam;
  late int mark;
  score({
    required this.exam, 
    required this.mark
    });
}

class StudentManager {
  List<Student> students = [];

  //add student
  void addStudent(Student student) {
    students.add(student);
    print('Add student : ${student.name} successfully');
  }
  //get all students
  List<Student> getAllStudents() {
    return students;
  }
  //show student by id
  void showStudentById(int id) {
    for (var student in students) {
      if (student.id == id) {
        print('Student id: ${student.id}');
        print('Student name: ${student.name}');
        student.subjects.forEach((subject) {
          print('Subject name: ${subject.name}');
          subject.studentMarks.forEach((score) {
            print('Exam: ${score.exam}');
            print('Mark: ${score.mark}');
          });
        });
      }
    }
  }

  //find student by id
  Student? findStudentById(int id) {
    for (var student in students) {
      if (student.id == id) {
        return student;
      }
    }
    return null;
  }

  //update student by id
  void updateStudentById(int id, String name, List<Subject> subjects) {
    findStudentById(id);
    if (findStudentById(id) != null) {
      students[id].name = name;
      students[id].subjects = subjects;
      print('Update student : ${students[id].name} successfully');
      print("Name after update: ${students[id].name}");
      subjects.forEach((subject) {
        print('Subject name: ${subject.name}');
        subject.studentMarks.forEach((score) {
          print('Exam: ${score.exam}');
          print('Mark: ${score.mark}');
        });
      });
    }
    else {
      print('Student not found');
    }
  }
}