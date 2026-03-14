// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/material.dart' as _i5;
import 'package:month3_lesson1/pages/counter_page.dart' as _i1;
import 'package:month3_lesson1/pages/create_page.dart' as _i2;
import 'package:month3_lesson1/pages/home_page.dart' as _i3;

/// generated route for
/// [_i1.CounterPage]
class CounterRoute extends _i4.PageRouteInfo<CounterRouteArgs> {
  CounterRoute({
    _i5.Key? key,
    required int count,
    List<_i4.PageRouteInfo>? children,
  }) : super(
         CounterRoute.name,
         args: CounterRouteArgs(key: key, count: count),
         initialChildren: children,
       );

  static const String name = 'CounterRoute';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<CounterRouteArgs>();
      return _i1.CounterPage(key: args.key, count: args.count);
    },
  );
}

class CounterRouteArgs {
  const CounterRouteArgs({this.key, required this.count});

  final _i5.Key? key;

  final int count;

  @override
  String toString() {
    return 'CounterRouteArgs{key: $key, count: $count}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! CounterRouteArgs) return false;
    return key == other.key && count == other.count;
  }

  @override
  int get hashCode => key.hashCode ^ count.hashCode;
}

/// generated route for
/// [_i2.CreatePage]
class CreateRoute extends _i4.PageRouteInfo<void> {
  const CreateRoute({List<_i4.PageRouteInfo>? children})
    : super(CreateRoute.name, initialChildren: children);

  static const String name = 'CreateRoute';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      return const _i2.CreatePage();
    },
  );
}

/// generated route for
/// [_i3.HomePage]
class HomeRoute extends _i4.PageRouteInfo<void> {
  const HomeRoute({List<_i4.PageRouteInfo>? children})
    : super(HomeRoute.name, initialChildren: children);

  static const String name = 'HomeRoute';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      return const _i3.HomePage();
    },
  );
}
