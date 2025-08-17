BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL (asynchronously)

SELECT
	make_timestamp(2010, t."ID", 1, 20, 35, 44::Float)
FROM
	"LinqDataTypes" t
WHERE
	Floor(Extract(year From make_timestamp(2010, t."ID", 1, 20, 35, 44::Float)))::Int = 2010

