INSERT INTO public."user" (id, name) VALUES (1, 'nakanishi');
INSERT INTO public."user" (id, name) VALUES (2, 'kei');
INSERT INTO public."user" (id, name) VALUES (3, 'kihara');
INSERT INTO public.allow_to_see (user_id_parent, user_id_child) VALUES (1, 2);
INSERT INTO public.tweet (id, user_id, body, is_public) VALUES (1, 1, 'react is moder js tool', true);
INSERT INTO public.tweet (id, user_id, body, is_public) VALUES (3, 2, 'css is moder js tool', true);
INSERT INTO public.tweet (id, user_id, body, is_public) VALUES (2, 1, 'japan is moder js tool', false);
SELECT pg_catalog.setval('public.tweet_id_seq', 3, true);
SELECT pg_catalog.setval('public.user_id_seq', 3, true);
