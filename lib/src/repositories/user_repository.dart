import 'package:real_social/src/services/auth_service.dart';
import 'package:real_social/src/models/real_user.dart';
import 'package:real_social/src/services/user_auth_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'user_repository.g.dart';

@riverpod
class UserRepository extends _$UserRepository {
  @override
  RealUser? build() {
    final sub = ref.listen(userAuthStateProvider, (prev, next) {
      next.when(
        data: (data) => state = data,
        error: (error, stackTrace) {
          throw error;
        },
        loading: () {},
      );
    });
    ref.onDispose(sub.close);
    return null;
  }

  Future<void> signInWithPassword({required String email, required String password}) {
    return ref.read(authServiceProvider.notifier).signInWithPassword(email: email, password: password);
  }

  Future<void> signInWithGoogle() {
    return ref.read(authServiceProvider.notifier).signInWithGoogle();
  }

  Future<void> signOut() {
    return ref.read(authServiceProvider.notifier).signOut();
  }
}
