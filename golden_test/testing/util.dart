// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:path/path.dart' as path;

const mobileSize = Size(540, 960);
const desktopSize = Size(1280, 850);
const homeAssets = [
  'assets/icons/cupertino/cupertino.png',
  'assets/icons/material/material.png',
  'assets/icons/reference/reference.png',
  'assets/logo/flutter_logo.png',
  'assets/studies/crane_card.png',
  'assets/studies/crane_card_dark.png',
  'assets/studies/rally_card.png',
  'assets/studies/rally_card_dark.png',
  'assets/studies/shrine_card.png',
  'assets/studies/shrine_card_dark.png',
  'assets/studies/fortnightly_card.png',
  'assets/studies/fortnightly_card_dark.png',
];

Future<void> setUpBinding(
  WidgetTester tester, {
  Size size = mobileSize,
  Brightness brightness = Brightness.light,
}) async {
  tester.binding.window.physicalSizeTestValue = size;
  tester.binding.window.devicePixelRatioTestValue = 1.0;
  tester.binding.window.textScaleFactorTestValue = 1.0;
  tester.binding.window.platformBrightnessTestValue = brightness;
  addTearDown(tester.binding.window.clearAllTestValues);
}

Future<void> matchesGolden(Finder finder, String file) async {
  final filePath = path.join('goldens', file);
  // Running `matchesGoldenFile` twice seems to make sure that images are always
  // loaded and we can avoid any issues of flakiness.
  await matchesGoldenFile(filePath).matchAsync(finder);
  await expectLater(finder, matchesGoldenFile(filePath));
}
