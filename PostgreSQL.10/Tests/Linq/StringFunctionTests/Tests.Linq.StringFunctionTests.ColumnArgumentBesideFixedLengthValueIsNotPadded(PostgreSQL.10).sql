-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
SELECT
	RTRIM(Replace(t."NCharColumn", t."VarCharColumn", 'x')),
	RTRIM(Replace(t."CharColumn", t."VarCharColumn", 'x'))
FROM
	"StringTypesTable" t
ORDER BY
	t."Id"

