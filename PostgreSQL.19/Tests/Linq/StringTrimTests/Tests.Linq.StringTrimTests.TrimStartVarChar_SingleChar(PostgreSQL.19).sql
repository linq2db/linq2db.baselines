-- PostgreSQL.19 PostgreSQL13

SELECT
	LTRIM(t."VarCharColumn", '.')
FROM
	"StringTrimTable" t

-- PostgreSQL.19 PostgreSQL13

SELECT
	t1."Id",
	t1."CharColumn",
	t1."NCharColumn",
	t1."VarCharColumn",
	t1."NVarCharColumn"
FROM
	"StringTrimTable" t1

