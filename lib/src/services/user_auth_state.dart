import 'dart:async';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:real_words/src/models/real_user.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

part 'user_auth_state.g.dart';

@riverpod
Stream<RealUser?> userAuthState(Ref ref) {
  return Supabase.instance.client.auth.onAuthStateChange.map((data) {
    if (data.session?.user != null) {
      return RealUser(id: data.session!.user.id);
    } else {
      return null;
    }
  });
}
