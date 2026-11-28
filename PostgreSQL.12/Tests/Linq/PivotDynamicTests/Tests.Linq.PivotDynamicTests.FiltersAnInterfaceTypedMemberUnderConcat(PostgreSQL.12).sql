-- PostgreSQL.12 PostgreSQL12
SELECT
	r_1."Category"
FROM
	(
		SELECT
			SUM(r."Amount") FILTER (WHERE r."Year" = 2010) as "Y2010",
			r."Category"
		FROM
			"Sales" r
		GROUP BY
			r."Category"
		UNION ALL
		SELECT
			SUM(x."Amount") FILTER (WHERE x."Year" = 2010) as "Y2010",
			x."Category"
		FROM
			"Sales" x
		GROUP BY
			x."Category"
	) r_1
WHERE
	r_1."Y2010" > 16

