insert into articles (article_id, text) values
  ('article1', 'This is article1'),
  ('article2', 'This is article2');

insert into categories (category_id, category_name) values
  ('category1', 'TypeScript'),
  ('category2', 'React');

insert into article_categories (article_categories_id, article_id, category_id) values
  ('article_categories1', 'article1', 'category1');
