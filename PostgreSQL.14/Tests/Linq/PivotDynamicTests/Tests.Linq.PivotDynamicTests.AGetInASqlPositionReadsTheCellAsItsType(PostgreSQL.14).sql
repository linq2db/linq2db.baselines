-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
SELECT DISTINCT
	Floor(x."Amount")::Int
FROM
	"CategorySales" x
WHERE
	x."Year" = 2010

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
SELECT DISTINCT
	Floor(x."Amount")::Int
FROM
	"CategorySales" x
WHERE
	x."Year" = 2010 AND x."Category" = 'A'
LIMIT 2

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
DECLARE @castOfA Integer -- Int32
SET     @castOfA = 20

SELECT
	x."Category"
FROM
	"CategorySales" x
WHERE
	x."Year" = 2010 AND Floor(x."Amount")::Int = :castOfA

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
DECLARE @castOfA Integer -- Int32
SET     @castOfA = 20

SELECT
	r."Category"
FROM
	"CategorySales" r
GROUP BY
	r."Category"
HAVING
	Floor(SUM(r."Amount") FILTER (WHERE r."Year" = 2010))::Int = :castOfA

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
SELECT DISTINCT
	Floor(SUM(g_1."Amount") FILTER (WHERE g_1."Year" = 2010))::Int
FROM
	"CategorySales" g_1
GROUP BY
	g_1."Category"

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL12
SELECT
	SUM(r."Amount") FILTER (WHERE r."Year" = 2000),
	SUM(r."Amount") FILTER (WHERE r."Year" = 2010)
FROM
	"CategorySales" r
GROUP BY
	r."Category"

