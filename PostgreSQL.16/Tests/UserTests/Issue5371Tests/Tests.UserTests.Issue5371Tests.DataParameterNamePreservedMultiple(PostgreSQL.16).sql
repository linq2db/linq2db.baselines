-- PostgreSQL.16 PostgreSQL.15 PostgreSQL
DECLARE @p1 Varchar(3) -- String
SET     @p1 = 'ONE'
DECLARE @p2 Varchar(3) -- String
SET     @p2 = 'two'

SELECT
	x.id,
	x.value
FROM
	"Item" x
WHERE
	LOWER(value) = LOWER(:p1) OR LOWER(value) = LOWER(:p2)
ORDER BY
	x.id

