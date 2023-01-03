import 'package:project1/services/auth/auth_user.dart';

abstract class AuthProvider {

  AuthUser? get currentUser;

  Future<AuthUser> login({
    required email,
    required password,
  });

  Future<AuthUser> createUser({
    required email, 
    required password,
  });

  Future<void> logout();

  Future<void> sendEmailVerification();
  
}