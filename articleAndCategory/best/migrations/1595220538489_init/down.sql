
alter table "public"."article_categories" drop constraint "article_categories_pkey";
alter table "public"."article_categories"
    add constraint "article_categories_pkey" 
    primary key ( "category_id" );

alter table "public"."article_categories" drop constraint "article_categories_pkey";
alter table "public"."article_categories"
    add constraint "article_categories_pkey" 
    primary key ( "article_id" );

alter table "public"."article_categories" drop constraint "article_categories_pkey";
alter table "public"."article_categories"
    add constraint "article_categories_pkey" 
    primary key ( "article_id", "category_id" );

DROP TABLE "public"."article_categories";

DROP TABLE "public"."categories";

DROP TABLE "public"."articles";
