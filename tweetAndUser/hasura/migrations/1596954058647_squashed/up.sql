
CREATE TABLE "public"."user"("id" serial NOT NULL, "name" text NOT NULL, PRIMARY KEY ("id") );

CREATE TABLE "public"."tweet"("id" serial NOT NULL, "user_id" integer NOT NULL, "body" text NOT NULL, "is_public" boolean NOT NULL DEFAULT true, PRIMARY KEY ("id") );

CREATE TABLE "public"."allow_to_see"("user_id_parent" integer NOT NULL, "user_id_child" integer NOT NULL, PRIMARY KEY ("user_id_parent","user_id_child") );

alter table "public"."tweet"
           add constraint "tweet_user_id_fkey"
           foreign key ("user_id")
           references "public"."user"
           ("id") on update restrict on delete restrict;

alter table "public"."allow_to_see"
           add constraint "allow_to_see_user_id_parent_fkey"
           foreign key ("user_id_parent")
           references "public"."user"
           ("id") on update restrict on delete restrict;

alter table "public"."allow_to_see"
           add constraint "allow_to_see_user_id_child_fkey"
           foreign key ("user_id_child")
           references "public"."user"
           ("id") on update restrict on delete restrict;
