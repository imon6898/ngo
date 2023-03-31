import 'package:shared_preferences/shared_preferences.dart';
import 'package:ngo/src/features/user/user_entities.dart';

abstract class  UserPrefManger{

  String getPhoneNumber();

  removePhoneNumber();
}


class UserPrefMangerImp implements UserPrefManger{


  final SharedPreferences defaultPreferences;

  UserPrefMangerImp({required this.defaultPreferences});

  @override
  String getPhoneNumber() {
    return '0932352323';
  }

  @override
  removePhoneNumber() {
    throw UnimplementedError();
  }



}