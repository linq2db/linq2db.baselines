-- PostgreSQL.12 PostgreSQL12
DECLARE @p Varchar(3) -- String
SET     @p = 'ONE'

SELECT
	x.id,
	x.value
FROM
	"NamedParameterItem" x
WHERE
	LOWER(value) = LOWER(:p)

