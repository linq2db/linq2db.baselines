-- PostgreSQL.14 PostgreSQL.13 PostgreSQL

SELECT
	LTRIM(t."VarCharColumn", 'ab')
FROM
	"StringTrimTable" t

