-- PostgreSQL.17 PostgreSQL.15 PostgreSQL13

SELECT
	LTRIM('...++' || Coalesce(t."VarCharColumn", ''), '.+')
FROM
	"StringTrimTable" t

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL13

SELECT
	t1."Id",
	t1."CharColumn",
	t1."NCharColumn",
	t1."VarCharColumn",
	t1."NVarCharColumn"
FROM
	"StringTrimTable" t1

