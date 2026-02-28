-- PostgreSQL.15 PostgreSQL
DECLARE @p1 Varchar(3) -- String
SET     @p1 = 'ONE'

SELECT
	x.id,
	x.value
FROM
	"Item" x
WHERE
	LOWER("value") = LOWER(:p1)

