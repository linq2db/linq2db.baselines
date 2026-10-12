-- PostgreSQL.9.5 PostgreSQL
DECLARE @Year Integer -- Int32
SET     @Year = 2000
DECLARE @Quarter Integer -- Int32
SET     @Quarter = 1
DECLARE @Quarter_1 Integer -- Int32
SET     @Quarter_1 = 2

SELECT
	g_1."Category",
	SUM(g_1."Amount") FILTER (WHERE g_1."Year" = :Year AND g_1."Quarter" = :Quarter),
	SUM(g_1."Amount") FILTER (WHERE g_1."Year" = :Year AND g_1."Quarter" = :Quarter_1)
FROM
	"QuarterAmounts" g_1
GROUP BY
	g_1."Category"

