-- PostgreSQL.13 PostgreSQL

SELECT DISTINCT ON (t1."Group")
	t1."Id",
	t1."Name",
	t1."Group",
	t1."Date",
	t1."Amount",
	t1."IsActive",
	t1."Priority"
FROM
	"TestData" t1
ORDER BY
	t1."Group",
	t1."Priority" DESC,
	t1."Id",
	t1."Date"

-- PostgreSQL.13 PostgreSQL

SELECT
	t1."Id",
	t1."Name",
	t1."Group",
	t1."Date",
	t1."Amount",
	t1."IsActive",
	t1."Priority"
FROM
	"TestData" t1

