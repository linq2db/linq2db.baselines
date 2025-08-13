BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL
DECLARE @year Integer -- Int32
SET     @year = 2010

SELECT
	make_timestamp(:year, t."ID", 1, 0, 0, 0)
FROM
	"LinqDataTypes" t
WHERE
	Floor(Extract(year From make_timestamp(:year, t."ID", 1, 0, 0, 0)))::Int = 2010

