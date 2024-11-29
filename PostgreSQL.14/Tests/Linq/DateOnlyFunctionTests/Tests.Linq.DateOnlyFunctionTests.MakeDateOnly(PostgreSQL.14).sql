BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	t.c1
FROM
	(
		SELECT
			make_timestamp(2010, p."ID", 1, 0, 0, 0) as c1
		FROM
			"LinqDataTypes" p
	) t
WHERE
	Floor(Extract(year From t.c1))::Int = 2010

