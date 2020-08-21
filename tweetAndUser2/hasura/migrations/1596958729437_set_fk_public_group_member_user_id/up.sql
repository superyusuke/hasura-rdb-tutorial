alter table "public"."group_member"
           add constraint "group_member_user_id_fkey"
           foreign key ("user_id")
           references "public"."user"
           ("id") on update restrict on delete restrict;
