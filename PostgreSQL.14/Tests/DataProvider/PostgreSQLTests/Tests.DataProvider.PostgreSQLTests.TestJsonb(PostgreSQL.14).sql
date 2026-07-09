-- PostgreSQL.14 PostgreSQL.13 PostgreSQL13
DECLARE @p Jsonb -- Object
SET     @p = '{"name":"bob","age":10}'

SELECT :p

