-- PostgreSQL.18 PostgreSQL

SELECT
	LTRIM('   ' || Coalesce(t."VarCharColumn", ''))
FROM
	"StringTrimTable" t

-- PostgreSQL.18 PostgreSQL

SELECT
	t1."Id",
	t1."CharColumn",
	t1."NCharColumn",
	t1."VarCharColumn",
	t1."NVarCharColumn"
FROM
	"StringTrimTable" t1

