-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	LTRIM(t."VarCharColumn", '.+')
FROM
	"StringTrimTable" t
ORDER BY
	t."Id"

