-- SapHana.Odbc SapHanaOdbc
DECLARE @Year Int -- Int32
SET     @Year = 2000
DECLARE @Quarter Int -- Int32
SET     @Quarter = 1
DECLARE @Year Int -- Int32
SET     @Year = 2000
DECLARE @Quarter Int -- Int32
SET     @Quarter = 2

SELECT
	"g_1"."Category",
	SUM(CASE
		WHEN "g_1"."Year" = ? AND "g_1"."Quarter" = ? THEN "g_1"."Amount"
		ELSE NULL
	END),
	SUM(CASE
		WHEN "g_1"."Year" = ? AND "g_1"."Quarter" = ? THEN "g_1"."Amount"
		ELSE NULL
	END)
FROM
	"QuarterAmounts" "g_1"
GROUP BY
	"g_1"."Category"

