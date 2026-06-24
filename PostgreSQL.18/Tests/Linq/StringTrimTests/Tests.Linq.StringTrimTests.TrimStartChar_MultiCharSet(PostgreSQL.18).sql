-- PostgreSQL.18 PostgreSQL13

SELECT
	LTRIM(t."CharColumn", '.+')
FROM
	"StringTrimTable" t

-- PostgreSQL.18 PostgreSQL13

SELECT
	t1."Id",
	t1."CharColumn",
	t1."NCharColumn",
	t1."VarCharColumn",
	t1."NVarCharColumn"
FROM
	"StringTrimTable" t1

