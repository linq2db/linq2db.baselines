-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
DECLARE @value Text(1) -- String
SET     @value = 'x'

SELECT
	r."Id"
FROM
	"ConcatRow" r
WHERE
	Coalesce(r."S", '') || 'x' = :value

