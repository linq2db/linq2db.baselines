-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	t1."Id",
	t1."TestId",
	t1."NTestId"
FROM
	"TestTable" t1
ORDER BY
	t1."Id"
LIMIT 1

