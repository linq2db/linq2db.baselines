-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	RTRIM(t."VarCharColumn", 'ab')
FROM
	"StringTrimTable" t

