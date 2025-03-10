import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

part 'auth_service.g.dart';

@riverpod
class AuthService extends _$AuthService {
  @override
  void build() {
    return;
  }

  final _supabase = Supabase.instance.client;

  Future<void> signInWithPassword({required String email, required String password}) {
    return _supabase.auth.signInWithPassword(email: email, password: password);
  }

  /// TODO: Check later
  /// Fails when refreshing using OAuth on the WEB
  /// https://github.com/supabase/supabase-flutter/issues/836
  Future<void> signInWithGoogle() {
    return _supabase.auth.signInWithOAuth(OAuthProvider.google);
  }

  Future<void> signOut() {
    return _supabase.auth.signOut();
  }
}
