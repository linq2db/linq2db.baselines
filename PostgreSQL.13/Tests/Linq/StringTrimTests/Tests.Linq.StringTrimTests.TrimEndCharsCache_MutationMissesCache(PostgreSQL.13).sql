-- PostgreSQL.13 PostgreSQL

SELECT
	RTRIM(t."VarCharColumn", '.+')
FROM
	"StringTrimTable" t
ORDER BY
	t."Id"

-- PostgreSQL.13 PostgreSQL

SELECT
	RTRIM(t."VarCharColumn", 'ab')
FROM
	"StringTrimTable" t
ORDER BY
	t."Id"

