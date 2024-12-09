BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	make_timestamp(2010, t."ID", 1, 0, 0, 0)
FROM
	"LinqDataTypes" t
WHERE
	Floor(Extract(year From make_timestamp(2010, t."ID", 1, 0, 0, 0)))::Int = 2010

