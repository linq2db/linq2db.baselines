-- PostgreSQL.15 PostgreSQL

SELECT
	LTRIM(t."VarCharColumn", '.+')
FROM
	"StringTrimTable" t

