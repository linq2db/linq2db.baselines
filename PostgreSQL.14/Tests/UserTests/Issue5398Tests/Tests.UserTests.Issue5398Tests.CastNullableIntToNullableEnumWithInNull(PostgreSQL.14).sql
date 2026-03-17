-- PostgreSQL.14 PostgreSQL.13 PostgreSQL

SELECT
	i."Id"
FROM
	"TestEnumTable" i
WHERE
	(i."Value" IN (1) OR i."Value" IS NULL)
ORDER BY
	i."Id"

