class TrendingProductList {
  final String title;
  final String image;
  final int stock;
  final bool isFavorite;

  TrendingProductList({
    required this.title,
    required this.image,
    required this.stock,
    required this.isFavorite,
  });
}

List<TrendingProductList> trendingList = [
  TrendingProductList(title: "Crystal Cascade by Joe Waterman", image: "images/product/trending/trending_1.png", stock: 20, isFavorite: false),
  TrendingProductList(title: "Style Guide by Juliette Johnson", image: "images/product/trending/trending_2.png", stock: 14, isFavorite: false),
];