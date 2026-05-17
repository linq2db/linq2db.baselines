-- PostgreSQL.18 PostgreSQL

SELECT
	LTRIM(t."VarCharColumn", 'ab')
FROM
	"StringTrimTable" t
ORDER BY
	t."Id"

