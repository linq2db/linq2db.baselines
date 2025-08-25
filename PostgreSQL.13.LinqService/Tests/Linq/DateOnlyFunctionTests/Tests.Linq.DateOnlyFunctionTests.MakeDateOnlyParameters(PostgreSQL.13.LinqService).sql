BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL (asynchronously)
DECLARE @year Integer -- Int32
SET     @year = 2010

SELECT
	make_timestamp(:year, t."ID", 1, 0, 0, 0)
FROM
	"LinqDataTypes" t
WHERE
	Floor(Extract(year From make_timestamp(:year, t."ID", 1, 0, 0, 0)))::Int = 2010

