BeforeExecute
-- PostgreSQL.18 PostgreSQL (asynchronously)

SELECT
	make_timestamp(2010, t."ID", 1, 0, 0, 0)
FROM
	"LinqDataTypes" t
WHERE
	Floor(Extract(year From make_timestamp(2010, t."ID", 1, 0, 0, 0)))::Int = 2010

