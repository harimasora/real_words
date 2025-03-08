import 'dart:async';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

part 'user_auth_state.g.dart';

@riverpod
Stream<AuthState> userAuthState(Ref ref) {
  return Supabase.instance.client.auth.onAuthStateChange;
}
