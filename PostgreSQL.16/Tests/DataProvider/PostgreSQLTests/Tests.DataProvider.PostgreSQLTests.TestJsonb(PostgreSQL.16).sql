-- PostgreSQL.16 PostgreSQL.15 PostgreSQL13
DECLARE @p Jsonb -- Object
SET     @p = '{"name":"bob","age":10}'

SELECT :p

