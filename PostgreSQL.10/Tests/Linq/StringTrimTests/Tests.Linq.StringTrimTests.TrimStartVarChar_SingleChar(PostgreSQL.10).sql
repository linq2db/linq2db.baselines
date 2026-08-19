-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
SELECT
	LTRIM(t."VarCharColumn", '.')
FROM
	"StringTrimTable" t

-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
SELECT
	t1."Id",
	t1."CharColumn",
	t1."NCharColumn",
	t1."VarCharColumn",
	t1."NVarCharColumn"
FROM
	"StringTrimTable" t1

