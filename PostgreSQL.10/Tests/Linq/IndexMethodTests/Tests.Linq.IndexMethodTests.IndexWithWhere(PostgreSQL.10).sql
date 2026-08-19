-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
SELECT
	ROW_NUMBER() OVER (ORDER BY item_1."Id") - 1,
	item_1."Id",
	item_1."TestId"
FROM
	"TestTable" item_1
WHERE
	item_1."TestId" <> 20
ORDER BY
	item_1."Id"

-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
SELECT
	t1."Id",
	t1."TestId"
FROM
	"TestTable" t1

