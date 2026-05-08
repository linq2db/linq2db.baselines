-- PostgreSQL.18 PostgreSQL

SELECT
	LTRIM(t."VarCharColumn", '.+')
FROM
	"StringTrimTable" t

