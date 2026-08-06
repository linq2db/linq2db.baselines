-- PostgreSQL.18 PostgreSQL12
SELECT
	LTRIM(t."NVarCharColumn", '.+')
FROM
	"StringTrimTable" t

-- PostgreSQL.18 PostgreSQL12
SELECT
	t1."Id",
	t1."CharColumn",
	t1."NCharColumn",
	t1."VarCharColumn",
	t1."NVarCharColumn"
FROM
	"StringTrimTable" t1

