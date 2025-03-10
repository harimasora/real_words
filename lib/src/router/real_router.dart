import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:real_social/src/router/router_provider.dart';

class RealRouter extends HookConsumerWidget {
  const RealRouter({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(routerProvider);

    // TODO: Could add themes, translation services, etc.
    return MaterialApp.router(title: 'Real Social', routerConfig: router.config());
  }
}
