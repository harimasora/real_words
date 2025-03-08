import 'dart:convert';

import 'package:real_social/src/models/real_user.dart';
import 'package:real_social/src/user_auth_state.dart';
// import 'package:real_social/src/supabase.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

part 'user_repository.g.dart';

const _currentUserKey = 'user';

@riverpod
class UserRepository extends _$UserRepository {
  @override
  RealUser? build() {
    final sub = ref.listen(userAuthStateProvider, (prev, next) {
      next.whenData((data) {
        final AuthChangeEvent event = data.event;
        final Session? session = data.session;

        switch (event) {
          case AuthChangeEvent.initialSession:
            load();
            break;
          case AuthChangeEvent.signedIn:
            saveUser(RealUser(id: session!.user.id));
            break;
          case AuthChangeEvent.signedOut:
            clear();
            break;
          case AuthChangeEvent.passwordRecovery:
            saveUser(RealUser(id: session!.user.id));
          case AuthChangeEvent.tokenRefreshed:
            saveUser(RealUser(id: session!.user.id));
          case AuthChangeEvent.userUpdated:
            saveUser(RealUser(id: session!.user.id));
          case AuthChangeEvent.userDeleted:
            clear();
          case AuthChangeEvent.mfaChallengeVerified:
            saveUser(RealUser(id: session!.user.id));
        }
      });
    });
    ref.onDispose(sub.close);
    return null;
  }

  Future<void> load() async {
    final preferences = await SharedPreferences.getInstance();
    final storedUserString = preferences.getString(_currentUserKey);
    if (storedUserString != null) {
      final user = RealUser.fromJson(jsonDecode(storedUserString) as Map<String, dynamic>);
      state = user;
    } else {
      state = null;
    }
  }

  Future<void> saveUser(RealUser user, {bool clearSelectedStudent = true}) async {
    final preferences = await SharedPreferences.getInstance();
    await preferences.setString(_currentUserKey, jsonEncode(user.toJson()));
    await load();
  }

  Future<void> clear({bool reloadUser = true}) async {
    final preferences = await SharedPreferences.getInstance();
    await preferences.remove(_currentUserKey);
    await load();
  }
}
