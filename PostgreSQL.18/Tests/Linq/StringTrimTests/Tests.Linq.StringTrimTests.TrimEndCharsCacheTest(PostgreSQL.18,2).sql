-- PostgreSQL.18 PostgreSQL12
SELECT
	RTRIM(t."VarCharColumn", 'ab')
FROM
	"StringTrimTable" t
ORDER BY
	t."Id"

