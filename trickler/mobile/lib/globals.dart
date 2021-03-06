/// Copyright (c) Ammolytics and contributors. All rights reserved.
/// Released under the MIT license. See LICENSE file in the project root for details.

const GRAINS = 'GRAINS';
const GRAMS = 'GRAMS';
const UNIT_LIST = [
  GRAINS,
  GRAMS
];

const STABLE = 'STABLE';
const UNSTABLE = 'UNSTABLE';
const OVERLOAD = 'OVERLOAD';
const ERROR = 'ERROR';
const ACKNOWLEDGE = 'ACKNOWLEDGE';
const STABILITY_LIST = [
  STABLE,
  UNSTABLE,
  OVERLOAD,
  ERROR,
  ACKNOWLEDGE,
];

const TRICKLER_SERVICE_UUID = '10000000-be5f-4b43-a49f-76f2d65c6e28';
const AUTO_MODE_CHAR_UUID = '10000005-be5f-4b43-a49f-76f2d65c6e28';
const STABLE_CHAR_UUID = '10000002-be5f-4b43-a49f-76f2d65c6e28';
const TARGET_WEIGHT_CHAR_UUID = '10000004-be5f-4b43-a49f-76f2d65c6e28';
const UNIT_CHAR_UUID = '10000003-be5f-4b43-a49f-76f2d65c6e28';
const WEIGHT_CHAR_UUID = '10000001-be5f-4b43-a49f-76f2d65c6e28';
const MODEL_NUMBER_CHAR_UUID = '00002a24-0000-1000-8000-00805f9b34fb';
const SERIAL_NUMBER_CHAR_UUID = '00002a25-0000-1000-8000-00805f9b34fb';

// These UUIDs will be ignored by the _readCharacteristics method in bluetooth.dart
const DONT_READ_CHARS = [
  MODEL_NUMBER_CHAR_UUID,
  SERIAL_NUMBER_CHAR_UUID,
];
