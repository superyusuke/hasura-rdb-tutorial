
alter table "public"."allow_to_see" drop constraint "allow_to_see_user_id_child_fkey";

alter table "public"."allow_to_see" drop constraint "allow_to_see_user_id_parent_fkey";

alter table "public"."tweet" drop constraint "tweet_user_id_fkey";

DROP TABLE "public"."allow_to_see";

DROP TABLE "public"."tweet";

DROP TABLE "public"."user";
