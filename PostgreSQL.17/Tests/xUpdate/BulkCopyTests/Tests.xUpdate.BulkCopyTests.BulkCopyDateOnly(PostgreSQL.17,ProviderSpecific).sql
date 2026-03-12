INSERT BULK "DateOnlyTable"(Date)

-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	t1."Id",
	t1."Date"
FROM
	"DateOnlyTable" t1
LIMIT 2

