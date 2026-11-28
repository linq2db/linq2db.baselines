-- PostgreSQL.13 PostgreSQL12
SELECT DISTINCT
	Floor(x."Amount")::Int
FROM
	"CategorySales" x
WHERE
	x."Year" = 2010 AND x."Category" = 'A'
LIMIT 2

-- PostgreSQL.13 PostgreSQL12
DECLARE @castOfA Integer -- Int32
SET     @castOfA = 20

SELECT
	x."Category"
FROM
	"CategorySales" x
WHERE
	x."Year" = 2010 AND Floor(x."Amount")::Int = :castOfA

-- PostgreSQL.13 PostgreSQL12
DECLARE @castOfA Integer -- Int32
SET     @castOfA = 20

SELECT
	u_1."Key_1"
FROM
	(
		SELECT
			Floor(SUM(u."Amount") FILTER (WHERE u."Year" = 2010))::Int as "Value_1",
			u."Category" as "Key_1"
		FROM
			"CategorySales" u
		GROUP BY
			u."Category"
		UNION ALL
		SELECT
			Floor(SUM(g_1."Amount") FILTER (WHERE g_1."Year" = 2020))::Int as "Value_1",
			g_1."Category" as "Key_1"
		FROM
			"CategorySales" g_1
		GROUP BY
			g_1."Category"
	) u_1
WHERE
	u_1."Value_1" = :castOfA

-- PostgreSQL.13 PostgreSQL12
SELECT
	u_1."Value_1"
FROM
	(
		SELECT
			'Y2010'::text as "Name",
			u."Category" as "Key_1",
			Floor(SUM(u."Amount") FILTER (WHERE u."Year" = 2010))::Int as "Value_1"
		FROM
			"CategorySales" u
		GROUP BY
			u."Category"
		UNION ALL
		SELECT
			'Y2020'::text as "Name",
			g_1."Category" as "Key_1",
			Floor(SUM(g_1."Amount") FILTER (WHERE g_1."Year" = 2020))::Int as "Value_1"
		FROM
			"CategorySales" g_1
		GROUP BY
			g_1."Category"
	) u_1
WHERE
	u_1."Name" = 'Y2010'
ORDER BY
	u_1."Key_1"

-- PostgreSQL.13 PostgreSQL12
SELECT
	u_1."Value_1"
FROM
	(
		SELECT
			'Y2010'::text as "Name",
			Floor(SUM(u."Amount") FILTER (WHERE u."Year" = 2010))::Int as "Value_1"
		FROM
			"CategorySales" u
		GROUP BY
			u."Category"
		UNION ALL
		SELECT
			'Y2020'::text as "Name",
			Floor(SUM(g_1."Amount") FILTER (WHERE g_1."Year" = 2020))::Int as "Value_1"
		FROM
			"CategorySales" g_1
		GROUP BY
			g_1."Category"
	) u_1
WHERE
	u_1."Name" = 'Y2020'

