-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
SELECT
	g_1."Category",
	SUM(g_1."Amount") FILTER (WHERE g_1."Year" = 2000),
	SUM(g_1."Amount") FILTER (WHERE g_1."Year" = 2010)
FROM
	"CategorySales" g_1
GROUP BY
	g_1."Category"

-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
DECLARE @p Numeric(2, 0) -- Decimal
SET     @p = 20

SELECT
	x."Id"
FROM
	"CategorySales" x
WHERE
	x."Amount" = :p

-- PostgreSQL.10 PostgreSQL.9.5 PostgreSQL
DECLARE @Cells Numeric(2, 0) -- Decimal
SET     @Cells = 20

SELECT
	x."Id"
FROM
	"CategorySales" x
WHERE
	x."Amount" = :Cells

