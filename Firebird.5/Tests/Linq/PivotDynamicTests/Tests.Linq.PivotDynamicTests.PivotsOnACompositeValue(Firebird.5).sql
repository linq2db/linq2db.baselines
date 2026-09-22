-- Firebird.5 Firebird4
DECLARE @Year Integer -- Int32
SET     @Year = 2000
DECLARE @Quarter Integer -- Int32
SET     @Quarter = 1
DECLARE @Quarter_1 Integer -- Int32
SET     @Quarter_1 = 2

SELECT
	"g_1"."Category",
	SUM(CASE
		WHEN "g_1"."Year" = CAST(@Year AS Int) AND "g_1"."Quarter" = CAST(@Quarter AS Int)
			THEN "g_1"."Amount"
		ELSE NULL
	END),
	SUM(CASE
		WHEN "g_1"."Year" = CAST(@Year AS Int) AND "g_1"."Quarter" = CAST(@Quarter_1 AS Int)
			THEN "g_1"."Amount"
		ELSE NULL
	END)
FROM
	"QuarterAmounts" "g_1"
GROUP BY
	"g_1"."Category"

