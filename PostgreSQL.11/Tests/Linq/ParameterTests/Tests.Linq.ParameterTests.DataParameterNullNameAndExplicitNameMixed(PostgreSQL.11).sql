-- PostgreSQL.11 PostgreSQL
DECLARE @p1 Varchar(3) -- String
SET     @p1 = 'ONE'
DECLARE @p Varchar(3) -- String
SET     @p = 'two'

SELECT
	x.id,
	x.value
FROM
	"NamedParameterItem" x
WHERE
	LOWER(value) = LOWER(:p1) OR LOWER(value) = LOWER(:p)
ORDER BY
	x.id

