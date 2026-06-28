-- PostgreSQL.18 PostgreSQL13

SELECT
	LTRIM(t."VarCharColumn", '.+')
FROM
	"StringTrimTable" t
ORDER BY
	t."Id"

