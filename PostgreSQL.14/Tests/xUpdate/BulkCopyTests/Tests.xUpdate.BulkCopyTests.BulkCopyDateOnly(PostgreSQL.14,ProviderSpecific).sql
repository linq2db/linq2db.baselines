INSERT BULK "DateOnlyTable"(Date)

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL

SELECT
	t1."Id",
	t1."Date"
FROM
	"DateOnlyTable" t1
LIMIT 2

