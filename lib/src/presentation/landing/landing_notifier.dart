import 'package:real_words/src/repositories/user_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'landing_state.dart';

part 'landing_notifier.g.dart';

@riverpod
class LandingNotifier extends _$LandingNotifier {
  @override
  LandingState build() => const LandingState();

  Future<void> signInWithEmail() async {
    /// Hardcoded for demonstration purpose.
    await ref.read(userRepositoryProvider.notifier).signInWithPassword(email: 'real@social.com', password: '123456');
  }
}
