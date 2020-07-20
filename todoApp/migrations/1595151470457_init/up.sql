CREATE TABLE public.todos (
    todo_id text NOT NULL,
    text text NOT NULL,
    user_id text NOT NULL
);
CREATE TABLE public.users (
    user_id text NOT NULL,
    name text NOT NULL
);
ALTER TABLE ONLY public.todos
    ADD CONSTRAINT todos_pkey PRIMARY KEY (todo_id);
ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);
ALTER TABLE ONLY public.todos
    ADD CONSTRAINT todos_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id) ON UPDATE RESTRICT ON DELETE RESTRICT;
