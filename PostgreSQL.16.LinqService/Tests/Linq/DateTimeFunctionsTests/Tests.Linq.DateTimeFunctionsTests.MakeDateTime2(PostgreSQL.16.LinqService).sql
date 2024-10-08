BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	t_1.c1
FROM
	(
		SELECT
			make_timestamp(2010, t."ID", 1, 20, 35, 44::Float) as c1
		FROM
			"LinqDataTypes" t
	) t_1
WHERE
	Floor(Extract(year From t_1.c1))::Int = 2010

