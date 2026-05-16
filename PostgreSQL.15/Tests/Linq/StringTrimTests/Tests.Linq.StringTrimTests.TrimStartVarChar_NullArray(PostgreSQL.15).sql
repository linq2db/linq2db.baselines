-- PostgreSQL.15 PostgreSQL

SELECT
	LTRIM('   ' || Coalesce(t."VarCharColumn", ''))
FROM
	"StringTrimTable" t

-- PostgreSQL.15 PostgreSQL

SELECT
	t1."Id",
	t1."CharColumn",
	t1."NCharColumn",
	t1."VarCharColumn",
	t1."NVarCharColumn"
FROM
	"StringTrimTable" t1

