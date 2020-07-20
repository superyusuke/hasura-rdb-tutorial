alter table "public"."article_categories" drop constraint "article_categories_pkey";
alter table "public"."article_categories"
    add constraint "article_categories_pkey" 
    primary key ( "article_id" );
