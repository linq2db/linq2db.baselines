-- PostgreSQL.9.3 PostgreSQL
SELECT DISTINCT
	Floor(x."Amount")::Int
FROM
	"CategorySales" x
WHERE
	x."Year" = 2010

-- PostgreSQL.9.3 PostgreSQL
SELECT DISTINCT
	Floor(x."Amount")::Int
FROM
	"CategorySales" x
WHERE
	x."Year" = 2010 AND x."Category" = 'A'
LIMIT 2

-- PostgreSQL.9.3 PostgreSQL
DECLARE @castOfA Integer -- Int32
SET     @castOfA = 20

SELECT
	x."Category"
FROM
	"CategorySales" x
WHERE
	x."Year" = 2010 AND Floor(x."Amount")::Int = :castOfA

-- PostgreSQL.9.3 PostgreSQL
DECLARE @castOfA Integer -- Int32
SET     @castOfA = 20

SELECT
	r."Category"
FROM
	"CategorySales" r
GROUP BY
	r."Category"
HAVING
	Floor(SUM(CASE
		WHEN r."Year" = 2010 THEN r."Amount"
		ELSE NULL
	END))::Int = :castOfA

-- PostgreSQL.9.3 PostgreSQL
SELECT DISTINCT
	Floor(SUM(CASE
		WHEN g_1."Year" = 2010 THEN g_1."Amount"
		ELSE NULL
	END))::Int
FROM
	"CategorySales" g_1
GROUP BY
	g_1."Category"

-- PostgreSQL.9.3 PostgreSQL
SELECT
	SUM(CASE
		WHEN r."Year" = 2000 THEN r."Amount"
		ELSE NULL
	END),
	SUM(CASE
		WHEN r."Year" = 2010 THEN r."Amount"
		ELSE NULL
	END)
FROM
	"CategorySales" r
GROUP BY
	r."Category"

