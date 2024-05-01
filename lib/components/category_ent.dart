class CategoryEnt {
  String imageUrl, title;
  // Map<String, List<String>> differentImageUrl;
  CategoryEnt({
    required this.imageUrl,
    required this.title,
    // required this.differentImageUrl,
  });
}

List<CategoryEnt> categoriesGrid = [
  CategoryEnt(
    title: "Stories",
    imageUrl: "image 8.png",
  ),
  CategoryEnt(
    title: "Games",
    imageUrl: "image 9.png",
  ),
  CategoryEnt(
    title: "Videos",
    imageUrl: "image 10.png",
  ),
  CategoryEnt(
    title: "AI-Engine",
    imageUrl: "image 884.png",
  ),
];
