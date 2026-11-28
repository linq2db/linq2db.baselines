-- PostgreSQL.13 PostgreSQL12
SELECT
	r."Category"
FROM
	(
		SELECT
			SUM(g_1."Amount") FILTER (WHERE g_1."Year" = 2010) as "Y2010",
			g_1."Category"
		FROM
			"Sales" g_1
		GROUP BY
			g_1."Category"
	) r
WHERE
	r."Y2010" > 16

-- PostgreSQL.13 PostgreSQL12
SELECT
	r."Category"
FROM
	(
		SELECT
			SUM(g_1."Amount") FILTER (WHERE g_1."Year" = 2010) as "Y2010",
			g_1."Category"
		FROM
			"Sales" g_1
		GROUP BY
			g_1."Category"
	) r
WHERE
	r."Y2010" > 16

-- PostgreSQL.13 PostgreSQL12
SELECT
	r."Category"
FROM
	(
		SELECT
			SUM(g_1."Amount") FILTER (WHERE g_1."Year" = 2010) as "Y2010",
			g_1."Category"
		FROM
			"Sales" g_1
		GROUP BY
			g_1."Category"
	) r
WHERE
	r."Y2010" > 16

-- PostgreSQL.13 PostgreSQL12
SELECT
	row_1."Key_1",
	Floor(row_1."Y2000")::Int
FROM
	(
		SELECT
			SUM(g_1."Amount") FILTER (WHERE g_1."Year" = 2000) as "Y2000",
			g_1."Category" as "Key_1"
		FROM
			"Sales" g_1
		GROUP BY
			g_1."Category"
	) row_1
WHERE
	row_1."Y2000" IS NOT NULL

-- PostgreSQL.13 PostgreSQL12
SELECT
	u."Key_1"
FROM
	(
		SELECT
			Floor(row_1."Y2000")::Int as "Value_1",
			row_1."Key_1"
		FROM
			(
				SELECT
					SUM(g_1."Amount") FILTER (WHERE g_1."Year" = 2000) as "Y2000",
					g_1."Category" as "Key_1"
				FROM
					"Sales" g_1
				GROUP BY
					g_1."Category"
			) row_1
		WHERE
			row_1."Y2000" IS NOT NULL
	) u
WHERE
	u."Value_1" = 10

