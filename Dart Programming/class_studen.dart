//Creating Class Student with different data
class Student {
  int rollNum;
  String studName;
  int mark1;
  int mark2;
  int mark3;

  Student({
    required this.rollNum,
    required this.studName,
    required this.mark1,
    required this.mark2,
    required this.mark3,
  });

  //calculates total marks
  calculateTotal() {
    int totalmark = mark1 + mark2 + mark3;
    print("Totalmark Obtained by $studName is : $totalmark");
  }

  calculatePercentage() {
    double percentage = (mark1 + mark2 + mark3) / 300 * 100;
    print("Percentage Obtained by $studName is : $percentage+%");
  }
}

void main() {
  final student = Student(
      rollNum: 1,
      studName: "Arun Kumar Thakuri",
      mark1: 85,
      mark2: 85,
      mark3: 85);

  student.calculateTotal();
  student.calculatePercentage();
}
