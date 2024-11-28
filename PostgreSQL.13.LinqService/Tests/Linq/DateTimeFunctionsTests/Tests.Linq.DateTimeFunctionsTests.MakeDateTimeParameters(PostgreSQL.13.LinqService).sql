BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @year Integer -- Int32
SET     @year = 2010

SELECT
	t.c1
FROM
	(
		SELECT
			make_timestamp(:year, p."ID", 1, 0, 0, 0) as c1
		FROM
			"LinqDataTypes" p
	) t
WHERE
	Floor(Extract(year From t.c1))::Int = 2010

