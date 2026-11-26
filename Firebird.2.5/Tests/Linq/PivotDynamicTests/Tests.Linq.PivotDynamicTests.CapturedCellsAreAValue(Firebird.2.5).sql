-- Firebird.2.5 Firebird
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

-- Firebird.2.5 Firebird
DECLARE @p Decimal(2, 0)
SET     @p = 20

SELECT
	"x"."Id"
FROM
	"CategorySales" "x"
WHERE
	"x"."Amount" = @p

-- Firebird.2.5 Firebird
DECLARE @Cells Decimal(2, 0)
SET     @Cells = 20

SELECT
	"x"."Id"
FROM
	"CategorySales" "x"
WHERE
	"x"."Amount" = @Cells

