import 'package:test_project/models/estimate.dart';
import 'package:flutter/foundation.dart' show immutable;
import 'package:json_annotation/json_annotation.dart';

part 'customer_estimate_flow.g.dart';

@immutable
@JsonSerializable()
final class CustomerEstimateFlow {
  const CustomerEstimateFlow({this.estimates});

  factory CustomerEstimateFlow.fromJson(Map<String, dynamic> json) =>
      _$CustomerEstimateFlowFromJson(json);

  Map<String, dynamic> toJson() => _$CustomerEstimateFlowToJson(this);

  @JsonKey(name: "Customer_Estimate_Flow")
  final List<Estimate>? estimates;
}
