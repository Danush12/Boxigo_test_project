// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'customer_estimate_flow.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CustomerEstimateFlow _$CustomerEstimateFlowFromJson(
        Map<String, dynamic> json) =>
    CustomerEstimateFlow(
      estimates: (json['Customer_Estimate_Flow'] as List<dynamic>?)
          ?.map((e) => Estimate.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CustomerEstimateFlowToJson(
        CustomerEstimateFlow instance) =>
    <String, dynamic>{
      'Customer_Estimate_Flow': instance.estimates,
    };
