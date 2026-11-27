-- PostgreSQL.12 PostgreSQL12
SELECT
	i."Id"
FROM
	"InEnumTable" i
WHERE
	i."Value" IN (1, 2)
ORDER BY
	i."Id"

