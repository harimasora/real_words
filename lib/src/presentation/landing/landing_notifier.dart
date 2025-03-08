import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

import 'landing_state.dart';

part 'landing_notifier.g.dart';

@riverpod
class LandingNotifier extends _$LandingNotifier {
  @override
  LandingState build() => const LandingState();

  Future<void> signInWithEmail() async {
    await Supabase.instance.client.auth.signInWithPassword(password: '123456', email: 'real@social.com');
  }

  Future<void> signOut() async {
    await Supabase.instance.client.auth.signOut();
  }
}
