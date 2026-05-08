-- PostgreSQL.14 PostgreSQL.13 PostgreSQL

SELECT
	RTRIM(t."VarCharColumn", '.+')
FROM
	"StringTrimTable" t

