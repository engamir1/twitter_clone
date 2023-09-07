import 'package:appwrite/appwrite.dart';
import 'package:appwrite/models.dart' as model;
import 'package:twitter_clone/core/core.dart';

abstract class IAuthAPI {
  FutureEither<Account> signUp(
      {required String email, required String password});
}

// class AuthAPI implements IAuthAPI {
//   final Account _account;
//   AuthAPI({});
//   @override
//   FutureEither<Account> signUp(
//       {required String email, required String password}) async {}
// }
