BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

SELECT
	t.c1
FROM
	(
		SELECT
			Floor(Extract(year From make_timestamp(2010, p."ID", 1, 0, 0, 0)))::Int as "Year_1",
			make_timestamp(2010, p."ID", 1, 0, 0, 0) as c1
		FROM
			"LinqDataTypes" p
	) t
WHERE
	t."Year_1" = 2010 AND t."Year_1" IS NOT NULL

