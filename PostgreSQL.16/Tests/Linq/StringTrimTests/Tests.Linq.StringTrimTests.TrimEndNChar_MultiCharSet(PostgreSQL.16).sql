-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	RTRIM(Coalesce(t."NCharColumn", '') || '...++', '.+')
FROM
	"StringTrimTable" t

-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	t1."Id",
	t1."CharColumn",
	t1."NCharColumn",
	t1."VarCharColumn",
	t1."NVarCharColumn"
FROM
	"StringTrimTable" t1

