BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @year Integer -- Int32
SET     @year = 2010

SELECT
	t.c1
FROM
	(
		SELECT
			Floor(Extract(year From make_timestamp(:year, p."ID", 1, 0, 0, 0)))::Int as "Year_1",
			make_timestamp(:year, p."ID", 1, 0, 0, 0) as c1
		FROM
			"LinqDataTypes" p
	) t
WHERE
	t."Year_1" = 2010 AND t."Year_1" IS NOT NULL

