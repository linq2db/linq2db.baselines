-- PostgreSQL.13 PostgreSQL

SELECT
	i."Id"
FROM
	"TestEnumTable" i
WHERE
	i."Value" IN (1, 3)
ORDER BY
	i."Id"

-- PostgreSQL.13 PostgreSQL

SELECT
	t1."Id",
	t1."Value"
FROM
	"TestEnumTable" t1

