-- PostgreSQL.9.2 PostgreSQL
SELECT
	RTRIM(Replace(t."NCharColumn", t."VarCharColumn", 'x')),
	RTRIM(Replace(t."CharColumn", t."VarCharColumn", 'x'))
FROM
	"StringTypesTable" t
ORDER BY
	t."Id"

