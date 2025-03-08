import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:real_social/src/presentation/landing/landing_notifier.dart';
import 'package:real_social/src/user_auth_state.dart';
import 'package:real_social/src/user_repository.dart';

class HomePage extends HookConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notifier = ref.watch(landingNotifierProvider.notifier);
    final user = ref.watch(userRepositoryProvider);
    final auth = ref.watch(userAuthStateProvider);

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Text('Real Social'),
            ElevatedButton(onPressed: notifier.signOut, child: Text('Sign out')),
            Text('auth: ${auth}'),
            Text('user: ${user}'),
          ],
        ),
      ),
    );
  }
}
