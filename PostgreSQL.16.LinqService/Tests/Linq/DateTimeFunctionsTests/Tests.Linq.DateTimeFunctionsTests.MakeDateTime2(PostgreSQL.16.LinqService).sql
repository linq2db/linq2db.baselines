BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	t.c1
FROM
	(
		SELECT
			Floor(Extract(year From make_timestamp(2010, p."ID", 1, 20, 35, 44::Float)))::Int as "Year_1",
			make_timestamp(2010, p."ID", 1, 20, 35, 44::Float) as c1
		FROM
			"LinqDataTypes" p
	) t
WHERE
	t."Year_1" = 2010 AND t."Year_1" IS NOT NULL

