void main() {
  Student petrov = Student("Василий", "Петров", "A-021", [5, 5, 5, 5, 5, 5]);
  // petrov.averageMark();
  petrov.getScholarship();
  Aspirant sidorov =
      Aspirant(true, "Иван", "Сидоров", "Б-022", [5, 5, 2, 5, 5]);
  // sidorov.averageMark();
  sidorov.getScholarship();
}

class Student {
  String? firstName;
  String? lastName;
  String? group;
  List? marks;
  double? _averageMark;

  Student(String firstName, String lastName, String group, List marks) {
    this.firstName = firstName;
    this.lastName = lastName;
    this.group = group;
    this.marks = marks;
  }

  averageMark() {
    _averageMark = marks!.reduce((v, e) => v + e) / marks!.length;
  }

  getScholarship() {
    averageMark();
    int scolarship = (_averageMark == 5) ? 20000 : 0;
    print(
        "Сумма стипендии студента $lastName $firstName, составляет: $scolarship денег");
  }
}

class Aspirant extends Student {
  bool? scientificWork;

  Aspirant(bool scientificWork, String firstName, String lastName, String group,
      List marks)
      : super(firstName, lastName, group, marks) {
    this.scientificWork = scientificWork;
  }

  @override
  getScholarship() {
    averageMark();
    int scolarship = (_averageMark == 5) ? 40000 : 18000;
    print(
        "Сумма стипендии студента $lastName $firstName, составляет: $scolarship денег");
  }
}
