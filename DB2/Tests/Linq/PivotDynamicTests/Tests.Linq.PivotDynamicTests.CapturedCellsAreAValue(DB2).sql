-- DB2 DB2.LUW DB2LUW
SELECT
	"g_1"."Category",
	SUM(CASE
		WHEN "g_1"."Year" = 2000 THEN "g_1"."Amount"
		ELSE NULL
	END),
	SUM(CASE
		WHEN "g_1"."Year" = 2010 THEN "g_1"."Amount"
		ELSE NULL
	END)
FROM
	"CategorySales" "g_1"
GROUP BY
	"g_1"."Category"

-- DB2 DB2.LUW DB2LUW
DECLARE @p (12, 10) -- Decimal
SET     @p = 20.0000000000

SELECT
	"x"."Id"
FROM
	"CategorySales" "x"
WHERE
	"x"."Amount" = @p

-- DB2 DB2.LUW DB2LUW
DECLARE @Cells (12, 10) -- Decimal
SET     @Cells = 20.0000000000

SELECT
	"x"."Id"
FROM
	"CategorySales" "x"
WHERE
	"x"."Amount" = @Cells

