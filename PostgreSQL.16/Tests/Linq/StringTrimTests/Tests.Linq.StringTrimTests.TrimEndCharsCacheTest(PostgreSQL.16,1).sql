-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	RTRIM(t."VarCharColumn", '.+')
FROM
	"StringTrimTable" t

