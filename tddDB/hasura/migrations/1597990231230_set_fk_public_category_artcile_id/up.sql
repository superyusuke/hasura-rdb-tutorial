alter table "public"."category"
           add constraint "category_artcile_id_fkey"
           foreign key ("artcile_id")
           references "public"."article"
           ("id") on update restrict on delete restrict;
