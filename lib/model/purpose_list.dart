class PurposeList {
  final String purpose;
  final bool isActive;

  PurposeList({
    required this.purpose,
    required this.isActive,
  });

  copyWith({
    String? purpose,
    bool? isActive,
  }) =>
      PurposeList(
        purpose: purpose ?? this.purpose,
        isActive: isActive ?? this.isActive,
      );
}
