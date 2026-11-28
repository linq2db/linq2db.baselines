-- PostgreSQL.9.3 PostgreSQL
SELECT
	g_1."Category",
	SUM(CASE
		WHEN g_1."Year" = 2000 THEN g_1."Amount"
		ELSE NULL
	END),
	SUM(CASE
		WHEN g_1."Year" = 2010 THEN g_1."Amount"
		ELSE NULL
	END)
FROM
	"CategorySales" g_1
GROUP BY
	g_1."Category"

-- PostgreSQL.9.3 PostgreSQL
DECLARE @p Numeric(2, 0) -- Decimal
SET     @p = 20

SELECT
	x."Id"
FROM
	"CategorySales" x
WHERE
	x."Amount" = :p

-- PostgreSQL.9.3 PostgreSQL
DECLARE @Cells Numeric(2, 0) -- Decimal
SET     @Cells = 20

SELECT
	x."Id"
FROM
	"CategorySales" x
WHERE
	x."Amount" = :Cells

