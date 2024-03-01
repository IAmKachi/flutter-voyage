// Exercise 4

class Student {
  final String name;
  final int age;

  const Student({
    required this.name,
    required this.age,
  });

  // for brevity
  @override
  String toString() {
    return "$name ($age)";
  }
}

void main() {
  Student student1 = Student(name: 'Bisi', age: 24);
  Student student2 = Student(name: 'Ronald', age: 23);

  var listOfStudents = [student1, student2];
  print("Initial list of students: $listOfStudents");

  // let's create a reference to student2;
  // note! these are the same object
  var sameStudent = student2;

  // to prove these are the same object
  print(student2.hashCode == sameStudent.hashCode);

    // isTheElementHere just checks the return value of the remove function. It does nkt stop its side effect; the element will still be removed if it's in the list.
  var isTheElementHere = listOfStudents.remove(sameStudent);
  print("Was the element in the list? $isTheElementHere");
  print("Final list of students: $listOfStudents");

  // let's create another list of the same students; the other one has been modified
  var anotherListOfStudents = [student1, student2];

  // it is worthy of note that anotherListOfStudents is not a reference to listOfStudents despite having the same instances of student as its elements
  // another list of students was created; its elements do not matter. To verify this, let's compare the hashcodes.

  print(anotherListOfStudents.hashCode == listOfStudents.hashCode);

  // let's remove a new instance of student with the same details as student2
  isTheElementHere = anotherListOfStudents.remove(Student(name: 'Ronald', age: 23));
  print("Was the element in this new list? $isTheElementHere");

  // the above code shouldn't do anything. When we call remove() on a list, it has returns true if tge element exists (and also removes it). Else, it returns false
}
