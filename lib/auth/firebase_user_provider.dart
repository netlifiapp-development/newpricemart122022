import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class PricemartFirebaseUser {
  PricemartFirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

PricemartFirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<PricemartFirebaseUser> pricemartFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<PricemartFirebaseUser>(
      (user) {
        currentUser = PricemartFirebaseUser(user);
        return currentUser!;
      },
    );
