import 'package:shared_preferences/shared_preferences.dart';
import 'package:ngo/src/commons/base/BaseRepository.dart';
import 'package:ngo/src/features/user/user_pref_manager.dart';

abstract class UserRepository {
  String getUserPhoneNumber();
}

class UserRepositoryImp extends BaseRepository implements UserRepository {
  final UserPrefManger pref;

  UserRepositoryImp({required this.pref});

  @override
  String getUserPhoneNumber() {
    return pref.getPhoneNumber();
  }






}

