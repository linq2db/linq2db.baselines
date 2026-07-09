-- PostgreSQL.18 PostgreSQL13

SELECT
	RTRIM(t."VarCharColumn", '.+')
FROM
	"StringTrimTable" t
ORDER BY
	t."Id"

-- PostgreSQL.18 PostgreSQL13

SELECT
	RTRIM(t."VarCharColumn", 'ab')
FROM
	"StringTrimTable" t
ORDER BY
	t."Id"

