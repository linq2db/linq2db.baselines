-- PostgreSQL.17 PostgreSQL.15 PostgreSQL13

SELECT
	i."Id"
FROM
	"TestEnumTable" i
WHERE
	i."Value" IN (1, 3)
ORDER BY
	i."Id"

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL13

SELECT
	t1."Id",
	t1."Value"
FROM
	"TestEnumTable" t1

