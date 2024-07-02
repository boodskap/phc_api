import 'package:json_annotation/json_annotation.dart';
import 'package:collection/collection.dart';

enum NotificationStatus {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('success')
  success('success'),
  @JsonValue('failure')
  failure('failure');

  final String? value;

  const NotificationStatus(this.value);
}

enum NotificationInfoStatus {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('success')
  success('success'),
  @JsonValue('failure')
  failure('failure');

  final String? value;

  const NotificationInfoStatus(this.value);
}

enum DashboardGetEcountGetTshint {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('TODAY')
  today('TODAY'),
  @JsonValue('THIS_WEEK')
  thisWeek('THIS_WEEK'),
  @JsonValue('THIS_MONTH')
  thisMonth('THIS_MONTH'),
  @JsonValue('RANGE')
  range('RANGE');

  final String? value;

  const DashboardGetEcountGetTshint(this.value);
}

enum DashboardGetStatisticsGetTshint {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('TODAY')
  today('TODAY'),
  @JsonValue('THIS_WEEK')
  thisWeek('THIS_WEEK'),
  @JsonValue('THIS_MONTH')
  thisMonth('THIS_MONTH'),
  @JsonValue('RANGE')
  range('RANGE');

  final String? value;

  const DashboardGetStatisticsGetTshint(this.value);
}

enum NotificationGetListGetSort {
  @JsonValue(null)
  swaggerGeneratedUnknown(null),

  @JsonValue('NEWEST')
  newest('NEWEST'),
  @JsonValue('OLDEST')
  oldest('OLDEST'),
  @JsonValue('ALPHABETIC')
  alphabetic('ALPHABETIC'),
  @JsonValue('REVERSE_ALPHABETIC')
  reverseAlphabetic('REVERSE_ALPHABETIC');

  final String? value;

  const NotificationGetListGetSort(this.value);
}
