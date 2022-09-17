import 'package:flutter/foundation.dart';
import 'package:news/model/category_model.dart';

List<CategoryModel> getCategories() {
  List<CategoryModel> Mycategory = [];
  CategoryModel categorymodel1 = new CategoryModel();
  categorymodel1.categoryname = "Business";
  categorymodel1.imageUrl =
      "https://images.unsplash.com/photo-1612550761236-e813928f7271?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1170&q=80";
  Mycategory.add(categorymodel1);
  categorymodel1 = new CategoryModel();

  categorymodel1.categoryname = "Entertainment";
  categorymodel1.imageUrl =
      "https://images.unsplash.com/photo-1522869635100-9f4c5e86aa37?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80";
  Mycategory.add(categorymodel1);
  categorymodel1 = new CategoryModel();

  categorymodel1.categoryname = "General";
  categorymodel1.imageUrl =
      "https://images.unsplash.com/photo-1495020689067-958852a7765e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60";
  Mycategory.add(categorymodel1);
  categorymodel1 = new CategoryModel();

  categorymodel1.categoryname = "Health";
  categorymodel1.imageUrl =
      "https://images.unsplash.com/photo-1494390248081-4e521a5940db?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1595&q=80";
  Mycategory.add(categorymodel1);
  categorymodel1 = new CategoryModel();

  categorymodel1.categoryname = "Science";
  categorymodel1.imageUrl =
      "https://images.unsplash.com/photo-1554475901-4538ddfbccc2?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1504&q=80";
  Mycategory.add(categorymodel1);
  categorymodel1 = new CategoryModel();

  categorymodel1.categoryname = "Sports";
  categorymodel1.imageUrl =
      "https://images.unsplash.com/photo-1495563923587-bdc4282494d0?ixlib=rb-1.2.1&auto=format&fit=crop&w=1500&q=80";
  Mycategory.add(categorymodel1);
  categorymodel1 = new CategoryModel();
  categorymodel1.categoryname = "Technology";
  categorymodel1.imageUrl =
      "https://images.unsplash.com/photo-1519389950473-47ba0277781c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1500&q=80";
  Mycategory.add(categorymodel1);

  return Mycategory;
}
