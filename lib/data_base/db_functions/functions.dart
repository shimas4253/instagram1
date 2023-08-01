import 'package:flutter/cupertino.dart';
import 'package:hive_flutter/adapters.dart';

import '../data_model/data_model_type.dart';

ValueNotifier<List<StudentModel>>studentListModel=ValueNotifier([]);

addStudent(StudentModel value)async{
  final studentDB=await Hive.openBox<StudentModel>('student_db');
  final _id=await studentDB.add(value);
  value.id=_id;
   studentListModel.value.add(value);
   studentListModel.notifyListeners();
}
getStudent()async{
  final studentDB=await Hive.openBox<StudentModel>('student_db');
  studentListModel.value.clear();
  studentListModel.value.addAll(studentDB.values);
  studentListModel.notifyListeners();
}