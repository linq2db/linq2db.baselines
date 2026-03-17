-- PostgreSQL.13 PostgreSQL
DECLARE @p Varchar(3) -- String
SET     @p = 'ONE'

SELECT
	x.id,
	x.value
FROM
	"Item" x
WHERE
	LOWER(value) = LOWER(:p)

