// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'words_repository.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$wordsListSizeMessageHash() =>
    r'920be4f43d2619e94512626199b7757bf07f01b8';

/// See also [wordsListSizeMessage].
@ProviderFor(wordsListSizeMessage)
final wordsListSizeMessageProvider = AutoDisposeProvider<String?>.internal(
  wordsListSizeMessage,
  name: r'wordsListSizeMessageProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product')
          ? null
          : _$wordsListSizeMessageHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
typedef WordsListSizeMessageRef = AutoDisposeProviderRef<String?>;
String _$wordsRepositoryHash() => r'9a3a9a0f2a04f80bb65ba70f4e53c882e3ff4604';

/// See also [WordsRepository].
@ProviderFor(WordsRepository)
final wordsRepositoryProvider =
    AutoDisposeNotifierProvider<WordsRepository, List<RealWord>>.internal(
      WordsRepository.new,
      name: r'wordsRepositoryProvider',
      debugGetCreateSourceHash:
          const bool.fromEnvironment('dart.vm.product')
              ? null
              : _$wordsRepositoryHash,
      dependencies: null,
      allTransitiveDependencies: null,
    );

typedef _$WordsRepository = AutoDisposeNotifier<List<RealWord>>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
