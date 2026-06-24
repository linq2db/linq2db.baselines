-- PostgreSQL.16 PostgreSQL.15 PostgreSQL13

SELECT
	RTRIM(t."VarCharColumn", '.+')
FROM
	"StringTrimTable" t
ORDER BY
	t."Id"

