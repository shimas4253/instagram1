import 'package:hive/hive.dart';
part 'data_model_type.g.dart';
@HiveType(typeId: 1)
class StudentModel{
  @HiveField(0)
  int? id;
  @HiveField(1)
  final String Email;
  @HiveField(2)
  final String password;

  StudentModel({ required this.Email, required this.password,this.id});
}