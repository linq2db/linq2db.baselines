-- PostgreSQL.9.3 PostgreSQL
DECLARE @value Text(1) -- String
SET     @value = 'x'

SELECT
	r."Id"
FROM
	"ConcatRow" r
WHERE
	(Coalesce(r."S", '') || 'x') = :value

