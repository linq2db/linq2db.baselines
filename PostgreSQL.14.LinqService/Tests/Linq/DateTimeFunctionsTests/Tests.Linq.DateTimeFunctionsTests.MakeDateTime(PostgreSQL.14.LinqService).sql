BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	make_timestamp(2010, t."ID", 1, 0, 0, 0::float8)
FROM
	"LinqDataTypes" t
WHERE
	Floor(Extract(year From make_timestamp(2010, t."ID", 1, 0, 0, 0::float8)))::Int = 2010

