import 'package:tads23_student/common/errors/errors_classes.dart';
import 'package:tads23_student/common/patterns/result.dart';
import 'package:tads23_student/domain/entities/student_tads_entidy.dart';

abstract class StudentRepositoryContract {
  Future<Result<StudentRepositoryContract, Failure>> getStudent();
  Future<Result<void, Failure>> saveStudent(StudantTadsEntidy student);
}
