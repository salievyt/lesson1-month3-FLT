
import 'package:auto_route/auto_route.dart' as _i3;
import 'package:flutter/material.dart' as _i4;
import 'package:month3_lesson1/pages/counter_page.dart' as _i1;
import 'package:month3_lesson1/pages/home_page.dart' as _i2;

class CounterRoute extends _i3.PageRouteInfo<CounterRouteArgs> {
  CounterRoute({
    _i4.Key? key,
    required dynamic count,
    List<_i3.PageRouteInfo>? children,
  }) : super(
         CounterRoute.name,
         args: CounterRouteArgs(key: key, count: count),
         initialChildren: children,
       );

  static const String name = 'CounterRoute';

  static _i3.PageInfo page = _i3.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<CounterRouteArgs>();
      return _i1.CounterPage(key: args.key, count: args.count);
    },
  );
}

class CounterRouteArgs {
  const CounterRouteArgs({this.key, required this.count});

  final _i4.Key? key;

  final dynamic count;

  @override
  String toString() {
    return 'CounterRouteArgs{key: $key, counter: $count}';
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


class HomeRoute extends _i3.PageRouteInfo<void> {
  const HomeRoute({List<_i3.PageRouteInfo>? children})
    : super(HomeRoute.name, initialChildren: children);

  static const String name = 'HomeRoute';

  static _i3.PageInfo page = _i3.PageInfo(
    name,
    builder: (data) {
      return const _i2.HomePage();
    },
  );
}
