-- PostgreSQL.13 PostgreSQL

SELECT
	t1."Id",
	t1."TestId"
FROM
	"TestTable" t1
ORDER BY
	t1."Id" DESC
LIMIT 1

