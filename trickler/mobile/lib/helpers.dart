/// Copyright (c) Ammolytics and contributors. All rights reserved.
/// Released under the MIT license. See LICENSE file in the project root for details.

import 'dart:math';
import 'package:flutter_blue/flutter_blue.dart';
import 'globals.dart';

/// capWeight returns a value that is within the range of [0.0 - 100.0) based on the given weight.

double capWeight(weight) {
  if (weight >= 1000.0) {
    weight = 999.99;
  } else if (weight < 0.0) {
    weight = 0.0;
  }
  return weight;
}

/// roundWeight returns a value that is rounded to either the
/// 3rd or 2nd decimal place, based on the given weight and unit.

double roundWeight(weight, unit) {
  double value = double.parse(weight.toStringAsFixed(4));
  int decimals = unit == GRAMS ? 3 : 2;
  decimals = pow(10, decimals);
  value *= decimals.toDouble();
  value = value.round() / decimals.toDouble();
  return value;
}

/// getCharFromUUID returns a characteristic from the given services characteristics, that
/// contains the given uuid. It will return null if it can't find the characteristic.

dynamic getCharFromUUID(String uuid, BluetoothService service) {
  return service?.characteristics != null ? service.characteristics
    .where((char) => char.uuid.toString() == uuid).single : null;
}