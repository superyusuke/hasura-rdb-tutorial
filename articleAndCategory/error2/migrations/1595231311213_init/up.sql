

CREATE TABLE "public"."articles"("article_id" text NOT NULL, "text" text NOT NULL, PRIMARY KEY ("article_id") );

CREATE TABLE "public"."categories"("category_id" text NOT NULL, "category_name" text NOT NULL, PRIMARY KEY ("category_id") );

CREATE TABLE "public"."article_categories"("article_id" text NOT NULL, "category_id" text NOT NULL, PRIMARY KEY ("article_id","category_id") , FOREIGN KEY ("article_id") REFERENCES "public"."articles"("article_id") ON UPDATE restrict ON DELETE restrict, FOREIGN KEY ("category_id") REFERENCES "public"."categories"("category_id") ON UPDATE restrict ON DELETE restrict);

alter table "public"."article_categories" drop constraint "article_categories_pkey";
alter table "public"."article_categories"
    add constraint "article_categories_pkey" 
    primary key ( "article_id" );

alter table "public"."article_categories" drop constraint "article_categories_pkey";
alter table "public"."article_categories"
    add constraint "article_categories_pkey" 
    primary key ( "category_id" );

alter table "public"."article_categories" drop constraint "article_categories_pkey";
alter table "public"."article_categories"
    add constraint "article_categories_pkey" 
    primary key ( "category_id", "article_id" );

alter table "public"."article_categories" drop constraint "article_categories_pkey";
alter table "public"."article_categories"
    add constraint "article_categories_pkey" 
    primary key ( "article_id" );
