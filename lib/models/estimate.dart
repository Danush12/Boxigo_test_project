import 'package:flutter/foundation.dart' show immutable;
import 'package:json_annotation/json_annotation.dart';

part 'estimate.g.dart';

@immutable
@JsonSerializable()
final class Estimate {
  const Estimate({
    this.estimateId,
    this.userId,
    this.movingFrom,
    this.movingTo,
    this.movingOn,
    this.distance,
    this.propertySize,
    this.oldFloorNo,
    this.newFloorNo,
    this.oldElevatorAvailability,
    this.newElevatorAvailability,
    this.oldParkingDistance,
    this.newParkingDistance,
    this.unpackingService,
    this.packingService,
  });

  factory Estimate.fromJson(Map<String, dynamic> json) =>
      _$EstimateFromJson(json);

  Map<String, dynamic> toJson() => _$EstimateToJson(this);

  @JsonKey(name: 'estimate_id')
  final String? estimateId;
  @JsonKey(name: 'user_id')
  final String? userId;
  @JsonKey(name: 'moving_from')
  final String? movingFrom;
  @JsonKey(name: 'moving_to')
  final String? movingTo;
  @JsonKey(name: 'moving_on')
  final String? movingOn;
  @JsonKey(name: 'distance')
  final String? distance;
  @JsonKey(name: 'property_size')
  final String? propertySize;
  @JsonKey(name: 'old_floor_no')
  final String? oldFloorNo;
  @JsonKey(name: 'new_floor_no')
  final String? newFloorNo;
  @JsonKey(name: 'old_elevator_availability')
  final String? oldElevatorAvailability;
  @JsonKey(name: 'new_elevator_availability')
  final String? newElevatorAvailability;
  @JsonKey(name: 'old_parking_distance')
  final String? oldParkingDistance;
  @JsonKey(name: 'new_parking_distance')
  final String? newParkingDistance;
  @JsonKey(name: 'unpacking_service')
  final String? unpackingService;
  @JsonKey(name: 'packing_service')
  final String? packingService;
}
