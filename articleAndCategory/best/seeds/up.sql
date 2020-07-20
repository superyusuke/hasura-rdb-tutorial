INSERT INTO articles (article_id, text) VALUES
  ('article1', 'This is article1'),
  ('article2', 'This is article2');
  
  INSERT INTO categories (category_id, category_name) VALUES
  ('category1', 'TypeScript'),
  ('category2', 'React');
  
  INSERT INTO article_categories (article_id, category_id) VALUES
  ('article1', 'category1'),
  ('article1', 'category2'),
  ('article2', 'category1');
