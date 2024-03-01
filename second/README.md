## About Exercise 4
This is the text explanation of exercise 4.

### Synopsis
A class `Student` was created with fields `name` and `id`. After that, a list was created and given two different instances of `Student`: `student1` and `student2`.

### First requirement
Remove `student2` by referencing an already created instance of `student2`.
What do I notice?

#### Observation
After creating a variable referencing `student2`, **removing the variable from the list removed /student2 automatically**

*Why?*
the new instance was created by referencing student2:
```dart
var sameStudent = student2;
```

This has the effect such that `sameStudent` points to the same location in memory as `student2`; essentially, it references `student2`. This is evident from the hash codes

```dart
sameStudent.hashCode == student2.hashCode // returns true
```

Therefore, calling `remove` on the list and supplying `sameStudent` as a parameter removes `student2` from the list – they are the same thing.

### Second requirement
Now, try removing an newly created instance of a `Student` with the same values as `student2`. Call `remove` on the list with the newly created instance.

#### Observation
The new instance was created directly from the constructor., and remove wad immediately called on the new instance.

```dart
// a new list similar to the initial one was created
// to ensure the same starting ground for all experiments
// as the previous list had been modified already

anotherListOfStudents.remove(Student(name: 'Ronald', age: 23));
```
*What?*
The result was quite anticlimactic: nothing happened. Digging deep, this was to be expected.

*Why?*
Calling `remove` on a list removes the element *if present and returns true*, else, *it just returns false and does nothing* (as it can't find the element).
Calling `remove` as shown above does not find that instance of `Student` (student2) in the list despite the remove parameter having the same fields as student2. Thus, the `remove` function returns false. This can be verified from this snippet of code:

```dart
isTheElementHere = anotherListOfStudents.remove(    Student(name: 'Ronald', age: 23)); // returns false to the variable
```

In conclusion:

**If a newly created instance of a class holds the same fields as an existing instance, they are not the same object unless the neely created instance was gotten from the existing instance with the assignment (=) operator.**
