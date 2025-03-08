import 'dart:async';

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:stack_trace/stack_trace.dart' as stack_trace;

import 'init_supabase.dart';
import 'lock_rotation.dart';

typedef AppBuilder = FutureOr<Widget> Function(ProviderContainer container);

Future<void> startApplication({
  List<Override> providerOverrides = const [],
  required AppBuilder builder,
  Future<void> Function(ProviderContainer)? setup,
}) async {
  // TODO: Could add runZonedGuarded to send errors somewhere
  WidgetsFlutterBinding.ensureInitialized();

  final container = ProviderContainer(overrides: providerOverrides);

  await Future.wait([lockRotation(), initSupabase()]);

  if (setup != null) {
    await setup(container);
  }

  FlutterError.demangleStackTrace = (StackTrace stack) {
    if (stack is stack_trace.Trace) return stack.vmTrace;
    if (stack is stack_trace.Chain) return stack.toTrace().vmTrace;
    return stack;
  };

  runApp(RealApp(container, child: await builder(container)));
}

class RealApp extends StatelessWidget {
  const RealApp(this.container, {super.key, required this.child});

  final ProviderContainer container;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return UncontrolledProviderScope(container: container, child: child);
  }
}
