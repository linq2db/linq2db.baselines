-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
SELECT
	LTRIM(t."VarCharColumn", 'ab')
FROM
	"StringTrimTable" t
ORDER BY
	t."Id"

