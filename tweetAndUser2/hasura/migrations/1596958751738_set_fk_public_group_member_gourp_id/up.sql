alter table "public"."group_member"
           add constraint "group_member_gourp_id_fkey"
           foreign key ("gourp_id")
           references "public"."user_group"
           ("id") on update restrict on delete restrict;
