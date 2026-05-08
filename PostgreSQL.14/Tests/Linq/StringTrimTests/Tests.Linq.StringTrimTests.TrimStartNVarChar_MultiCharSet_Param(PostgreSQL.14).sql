-- PostgreSQL.14 PostgreSQL.13 PostgreSQL

SELECT
	LTRIM(t."NVarCharColumn", '.+')
FROM
	"StringTrimTable" t

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL

SELECT
	t1."Id",
	t1."CharColumn",
	t1."NCharColumn",
	t1."VarCharColumn",
	t1."NVarCharColumn"
FROM
	"StringTrimTable" t1

