create function search_article(search_word text) returns setof articles as
$$
select *
from articles
where title ilike ('%' || search_word || '%')
$$
    LANGUAGE sql
    STABLE;
