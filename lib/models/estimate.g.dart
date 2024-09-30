// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'estimate.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Estimate _$EstimateFromJson(Map<String, dynamic> json) => Estimate(
      estimateId: json['estimate_id'] as String?,
      userId: json['user_id'] as String?,
      movingFrom: json['moving_from'] as String?,
      movingTo: json['moving_to'] as String?,
      movingOn: json['moving_on'] as String?,
      distance: json['distance'] as String?,
      propertySize: json['property_size'] as String?,
      oldFloorNo: json['old_floor_no'] as String?,
      newFloorNo: json['new_floor_no'] as String?,
      oldElevatorAvailability: json['old_elevator_availability'] as String?,
      newElevatorAvailability: json['new_elevator_availability'] as String?,
      oldParkingDistance: json['old_parking_distance'] as String?,
      newParkingDistance: json['new_parking_distance'] as String?,
      unpackingService: json['unpacking_service'] as String?,
      packingService: json['packing_service'] as String?,
    );

Map<String, dynamic> _$EstimateToJson(Estimate instance) => <String, dynamic>{
      'estimate_id': instance.estimateId,
      'user_id': instance.userId,
      'moving_from': instance.movingFrom,
      'moving_to': instance.movingTo,
      'moving_on': instance.movingOn,
      'distance': instance.distance,
      'property_size': instance.propertySize,
      'old_floor_no': instance.oldFloorNo,
      'new_floor_no': instance.newFloorNo,
      'old_elevator_availability': instance.oldElevatorAvailability,
      'new_elevator_availability': instance.newElevatorAvailability,
      'old_parking_distance': instance.oldParkingDistance,
      'new_parking_distance': instance.newParkingDistance,
      'unpacking_service': instance.unpackingService,
      'packing_service': instance.packingService,
    };
