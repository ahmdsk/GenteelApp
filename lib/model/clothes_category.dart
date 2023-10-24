class ClothesCategory {
  final String clothes;
  final bool isActive;

  ClothesCategory({
    required this.clothes,
    required this.isActive,
  });

  copyWith({
    String? clothes,
    bool? isActive,
  }) =>
      ClothesCategory(
        clothes: clothes ?? this.clothes,
        isActive: isActive ?? this.isActive,
      );
}
