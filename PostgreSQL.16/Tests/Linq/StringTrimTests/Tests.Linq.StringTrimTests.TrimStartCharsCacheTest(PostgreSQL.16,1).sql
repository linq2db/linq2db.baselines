-- PostgreSQL.16 PostgreSQL.15 PostgreSQL12
SELECT
	LTRIM(t."VarCharColumn", '.+')
FROM
	"StringTrimTable" t
ORDER BY
	t."Id"

