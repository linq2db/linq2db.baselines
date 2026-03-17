-- PostgreSQL.14 PostgreSQL.13 PostgreSQL

SELECT
	i."Id"
FROM
	"TestEnumTable" i
WHERE
	i."Value" IN (1, 2)
ORDER BY
	i."Id"

