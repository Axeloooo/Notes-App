import 'package:project1/services/auth/auth_provider.dart';
import 'package:project1/services/auth/auth_user.dart';

class AuthService implements AuthProvider {

  final AuthProvider provider;
  const AuthService(this.provider);

  @override
  Future<AuthUser> createUser({
    required email, 
    required password,
  }) => 
      provider.createUser(
        email: email, 
        password: password,
      );

  @override
  AuthUser? get currentUser => provider.currentUser;

  @override
  Future<AuthUser> login({
    required email, 
    required password,
  }) => 
      provider.login(
        email: email, 
        password: password,
      );

  @override
  Future<void> logout() => provider.logout();

  @override
  Future<void> sendEmailVerification() => provider.sendEmailVerification();

}
