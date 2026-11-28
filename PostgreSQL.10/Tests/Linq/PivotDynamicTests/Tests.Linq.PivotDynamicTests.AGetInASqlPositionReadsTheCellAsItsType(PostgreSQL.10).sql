-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
SELECT DISTINCT
	Floor(x."Amount")::Int
FROM
	"CategorySales" x
WHERE
	x."Year" = 2010

-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
SELECT DISTINCT
	Floor(x."Amount")::Int
FROM
	"CategorySales" x
WHERE
	x."Year" = 2010 AND x."Category" = 'A'
LIMIT 2

-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
DECLARE @castOfA Integer -- Int32
SET     @castOfA = 20

SELECT
	x."Category"
FROM
	"CategorySales" x
WHERE
	x."Year" = 2010 AND Floor(x."Amount")::Int = :castOfA

-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
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

-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
SELECT DISTINCT
	Floor(SUM(g_1."Amount") FILTER (WHERE g_1."Year" = 2010))::Int
FROM
	"CategorySales" g_1
GROUP BY
	g_1."Category"

-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
SELECT
	SUM(r."Amount") FILTER (WHERE r."Year" = 2000),
	SUM(r."Amount") FILTER (WHERE r."Year" = 2010)
FROM
	"CategorySales" r
GROUP BY
	r."Category"

