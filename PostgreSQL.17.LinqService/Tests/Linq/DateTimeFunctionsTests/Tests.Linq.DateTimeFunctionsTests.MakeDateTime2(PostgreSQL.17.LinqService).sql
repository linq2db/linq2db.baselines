BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	t.c1
FROM
	(
		SELECT
			make_timestamp(2010, p."ID", 1, 20, 35, 44::Float) as c1
		FROM
			"LinqDataTypes" p
	) t
WHERE
	Floor(Extract(year From t.c1))::Int = 2010

