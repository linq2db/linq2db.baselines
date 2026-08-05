-- PostgreSQL.17 PostgreSQL.15 PostgreSQL12
SELECT
	RTRIM(t."VarCharColumn", '.+')
FROM
	"StringTrimTable" t
ORDER BY
	t."Id"

