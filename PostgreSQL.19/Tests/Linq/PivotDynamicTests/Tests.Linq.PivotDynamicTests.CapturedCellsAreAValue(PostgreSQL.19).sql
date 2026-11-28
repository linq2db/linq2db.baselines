-- PostgreSQL.19 PostgreSQL12
SELECT
	g_1."Category",
	SUM(g_1."Amount") FILTER (WHERE g_1."Year" = 2000),
	SUM(g_1."Amount") FILTER (WHERE g_1."Year" = 2010)
FROM
	"CategorySales" g_1
GROUP BY
	g_1."Category"

-- PostgreSQL.19 PostgreSQL12
DECLARE @p Numeric(2, 0) -- Decimal
SET     @p = 20

SELECT
	x."Id"
FROM
	"CategorySales" x
WHERE
	x."Amount" = :p

-- PostgreSQL.19 PostgreSQL12
DECLARE @Cells Numeric(2, 0) -- Decimal
SET     @Cells = 20

SELECT
	x."Id"
FROM
	"CategorySales" x
WHERE
	x."Amount" = :Cells

