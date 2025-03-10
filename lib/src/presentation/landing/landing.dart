import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:real_social/src/presentation/landing/landing_notifier.dart';

class LandingPage extends HookConsumerWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final notifier = ref.watch(landingNotifierProvider.notifier);

    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24, vertical: 36),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              _Header(),
              _Paragraph(),
              ElevatedButton(onPressed: notifier.signInWithEmail, child: Text('Get Started')),
            ],
          ),
        ),
      ),
    );
  }
}

class _Header extends StatelessWidget {
  const _Header();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleAvatar(backgroundColor: Colors.white, minRadius: 8),
        CircleAvatar(backgroundColor: Colors.white30, minRadius: 8),
        SizedBox(width: 8),
        Text('RealWords', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
      ],
    );
  }
}

class _Paragraph extends StatelessWidget {
  const _Paragraph();

  @override
  Widget build(BuildContext context) {
    return Text.rich(
      TextSpan(
        style: TextStyle(color: Colors.white70, fontWeight: FontWeight.bold, fontSize: 42),
        text: 'Get ready to ',
        children: [
          TextSpan(style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 42), text: 'FAVORITE'),
          TextSpan(text: ' lots of new and exiting words using our super amazing app'),
        ],
      ),
    );
  }
}
