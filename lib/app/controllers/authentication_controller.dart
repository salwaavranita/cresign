import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:cresign/app/data/models/user_model.dart';
import 'package:cresign/app/routes/app_pages.dart';
import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthenticationController extends GetxController {
  final FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  final FirebaseFirestore firebaseFirestore = FirebaseFirestore.instance;

  GoogleSignIn _googleSignIn = GoogleSignIn();
  GoogleSignInAccount? _currentUser;
  late UserCredential userCredential;

  var myUsers = UserModel().obs;
  var isAuth = false.obs;


  RxBool isLogin = false.obs;



  Future<void> signInWithGoogle() async {
    try {
      await _googleSignIn.signOut();
      _currentUser = await _googleSignIn.signIn();
      final isSignIn = await _googleSignIn.isSignedIn();

      if (isSignIn == true) {
        final googleAuth = await _currentUser?.authentication;
        print("BERHASIL LOGIN");

        final credential = GoogleAuthProvider.credential(
          accessToken: googleAuth?.accessToken,
          idToken: googleAuth?.idToken,
        );
        print(_currentUser);
        userCredential = await firebaseAuth.signInWithCredential(credential);
        await addFirestore(
            "${_currentUser?.email}",
            "${_currentUser?.displayName}",
            "${_currentUser?.photoUrl ?? "noimage"}",
            "${userCredential.user?.metadata.lastSignInTime!.toIso8601String()}");
        print("BERHASIL ADD DATA FIREBASE");
        isAuth.value = true;
        Get.toNamed(Routes.HOME);
      } else {
        print("GAGAL LOGIN");
      }
    } catch (error) {
      print(error);
    }
  }

  Future<void> addFirestore(
      String email, String name, String photoUrl, String lastSignInTime) async {
    CollectionReference users = firebaseFirestore.collection('users');
    try {
      final checkUser = await users.doc(email).get();
      if (checkUser.data() == null) {
        await users.doc(email).set({
          "name": name,
          "email": email,
          "photoUrl": photoUrl,
          "lastSignInTime": lastSignInTime,
        });
        print("Success Add New User to Database");
      } else {
        await users.doc(email).update({
          'lastSignInTime': lastSignInTime,
        });
        print("Succes Logins");
      }
      final theUser = await users.doc(email).get();
      final theUserData = theUser.data() as Map<String, dynamic>;
      myUsers(UserModel.fromJson(theUserData));

    } catch (error) {
      print(error);
    }
  }
}
