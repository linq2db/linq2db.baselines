-- PostgreSQL.13 PostgreSQL
DECLARE @p Jsonb -- Object
SET     @p = '{"name":"bob","age":10}'

SELECT :p

