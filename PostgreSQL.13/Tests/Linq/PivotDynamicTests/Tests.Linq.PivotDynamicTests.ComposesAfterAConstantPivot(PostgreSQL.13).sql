-- PostgreSQL.13 PostgreSQL12
SELECT
	r_1."Key_1",
	r_1."Y2010"
FROM
	(
		SELECT
			SUM(r."Amount") FILTER (WHERE r."Year" = 2010) as "Y2010",
			r."Category" as "Key_1"
		FROM
			"CategorySales" r
		GROUP BY
			r."Category"
		HAVING
			SUM(r."Amount") FILTER (WHERE r."Year" = 2010) >= 15
	) r_1
ORDER BY
	r_1."Y2010" DESC

