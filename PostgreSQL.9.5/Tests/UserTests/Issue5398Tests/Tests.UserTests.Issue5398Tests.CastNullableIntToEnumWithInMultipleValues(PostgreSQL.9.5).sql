-- PostgreSQL.9.5 PostgreSQL
SELECT
	i."Id"
FROM
	"TestEnumTable" i
WHERE
	i."Value" IN (1, 2)
ORDER BY
	i."Id"

