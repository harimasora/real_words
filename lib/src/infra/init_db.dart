import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:real_social/src/user_repository.dart';

Future<void> initDb(ProviderContainer container) async {
  final userRepository = container.read(userRepositoryProvider.notifier);
  await userRepository.load();
}
