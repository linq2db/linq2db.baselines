BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @year Integer -- Int32
SET     @year = 2010

SELECT
	t_1.c1
FROM
	(
		SELECT
			make_timestamp(:year, t."ID", 1, 0, 0, 0) as c1
		FROM
			"LinqDataTypes" t
	) t_1
WHERE
	Floor(Extract(year From t_1.c1))::Int = 2010

