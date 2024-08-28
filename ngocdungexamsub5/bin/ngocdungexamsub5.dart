import 'package:ngocdungexamsub5/ngocdungexamsub5.dart' as ngocdungexamsub5;

// void main(List<String> arguments) {
//   print('Hello world: ${ngocdungexamsub5.calculate()}!');
// }

void main (){
  ngocdungexamsub5.StudentManager studentManager = ngocdungexamsub5.StudentManager();

  //add student
  studentManager.addStudent(ngocdungexamsub5.Student(
    id: 1,
    name: 'Ngoc Dung',
    subjects: [
      ngocdungexamsub5.Subject(
        name: 'Math',
        studentMarks: [
          ngocdungexamsub5.score(exam: 'midterm', mark: 8),
          ngocdungexamsub5.score(exam: 'final', mark: 9),
        ]
      ),
      ngocdungexamsub5.Subject(
        name: 'English',
        studentMarks: [
          ngocdungexamsub5.score(exam: 'midterm', mark: 7),
          ngocdungexamsub5.score(exam: 'final', mark: 8),
        ]
      ),
    ]
  ));

  studentManager.addStudent(ngocdungexamsub5.Student(
    id: 2,
    name: 'Ngoc Dung 2',
    subjects: [
      ngocdungexamsub5.Subject(
        name: 'Math',
        studentMarks: [
          ngocdungexamsub5.score(exam: 'midterm', mark: 4),
          ngocdungexamsub5.score(exam: 'final', mark: 5),
        ]
      ),
      ngocdungexamsub5.Subject(
        name: 'English',
        studentMarks: [
          ngocdungexamsub5.score(exam: 'midterm', mark: 6),
          ngocdungexamsub5.score(exam: 'final', mark: 7),
        ]
      ),
    ]
  ));


  //get all students
  studentManager.getAllStudents().forEach((student) {
    print('Student id: ${student.id}');
    print('Student name: ${student.name}');
    student.subjects.forEach((subject) {
      print('Subject name: ${subject.name}');
      subject.studentMarks.forEach((score) {
        print('Exam: ${score.exam}');
        print('Mark: ${score.mark}');
      });
      print("+++++++++++++++");
    });
    print("-------------------");
  });

  //update student by id
  studentManager.updateStudentById(1, 'Ngoc Dung 1', [
    ngocdungexamsub5.Subject(
      name: 'Math',
      studentMarks: [
        ngocdungexamsub5.score(exam: 'midterm', mark: 100),
        ngocdungexamsub5.score(exam: 'final', mark: 200),
      ]
    ),
    ngocdungexamsub5.Subject(
      name: 'English',
      studentMarks: [
        ngocdungexamsub5.score(exam: 'midterm', mark: 300),
        ngocdungexamsub5.score(exam: 'final', mark: 400),
      ]
    ),
  ]);
}